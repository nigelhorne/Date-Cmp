package Date::Cmp;

use strict;
use warnings;

use DateTime::Format::Genealogy;
use Scalar::Util;
use Term::ANSIColor;

our $dfg = DateTime::Format::Genealogy->new();

# Compare two dates. Approximate dates are compared.
# TODO: handle when only months are known
sub datecmp
{
	my ($left, $right, $complain) = @_;

	if((!defined($left)) || !defined($right)) {
		# Shouldn't happen with the prototype
		print STDERR "\n";
		if(!defined($left)) {
			print STDERR "BUG: left not defined\n";
		}
		if(!defined($right)) {
			print STDERR "BUG: right not defined\n";
		}
		my $i = 0;
		while((my @call_details = caller($i++))) {
			print STDERR "\t", colored($call_details[2] . ' of ' . $call_details[1], 'red'), "\n";
		}
		return 0;
	}

	if(Scalar::Util::blessed($left) && $left->can('date')) {
		$left = $left->date();
	}
	if(Scalar::Util::blessed($right) && $right->can('date')) {
		$right = $right->date();
	}

	return 0 if($left eq $right);

	if((!ref($left)) && (!ref($right)) && ($left =~ /(\d{3,4})$/)) {
		# Simple year test for fast comparison
		my $yol = $1;
		if($right =~ /(\d{3,4})$/) {
			my $yor = $1;
			if($yol != $yor) {
				return $yol <=> $yor;
			}
		}
	}

	if(!ref($left)) {
		if((!ref($right)) && ($left =~ /(^|[\s\/])\d{4}$/) && ($right =~ /(^|[\s\/,])(\d{4})$/)) {
			my $ryear = $2;
			$left =~ /(^|[\s\/])(\d{4})$/;
			my $lyear = $2;
			if($lyear != $ryear) {
				# Easy comparison for different years
				return $lyear <=> $ryear;
			}
		}
		if($left =~ /^(bef|aft)/i) {
			if($right =~ /^\d+$/) {
				# For example, comparing bef 1 Jun 1965 <=> 1969
				if($left =~ /\s(\d+)$/) {
					# Easy comparison for different years
					if($1 < $right) {
						return -1;
					}
				}
			}
			if($right =~ /(\d{4})/) {
				# BEF. 1932 <=> 2005-06-16
				my $ryear = $1;
				if($left =~ /^bef/i) {
					if($left =~ /(\d{4})/) {
						if($1 < $ryear) {
							return -1;
						}
					}
				}
			}
			print STDERR "$left <=> $right: not handled yet\n";
			my $i = 0;
			while((my @call_details = caller($i++))) {
				print STDERR "\t", colored($call_details[2] . ' of ' . $call_details[1], 'red'), "\n";
			}
			return 0;
		}
		if($left =~ /^(Abt|ca?)\.?\s+(.+)/i) {
			$left = $2;
		} elsif($left =~ /(.+?)\s?\?$/) {
			# "1828 ?"
			$left = $1;
		} elsif(($left =~ /\//) && ($left =~ /^[a-z\/]+\s+(.+)/i)) {
			# e.g. "Oct/Nov/Dec 1950"
			$left = $1;
		}

		if(($left =~ /^\d{3,4}/) && ($right =~ /^\d{3,4}/)) {
			# e.g. 1929/06/26 <=> 1939
			$left =~ /^(\d{3,4})/;
			my $start = $1;
			$right =~ /^(\d{3,4})/;
			my $end = $1;
			if($start != $end) {
				return $start <=> $end;
			}
		}

		if($left =~ /(\d{3,4})/) {
			my $start = $1;
			if($right =~ /(\d{3,4})/) {
				# e.g. 26 Aug 1744 <=> 1673-02-22T00:00:00
				my $end = $1;
				if($start != $end) {
					return $start <=> $end;
				}
			}
		}

		if($left =~ /^(\d{3,4})\sor\s(\d{3,4})$/) {
			# e.g. "1802 or 1803"
			my($start, $end) = ($1, $2);
			if($start == $end) {
				$complain->("the years are the same '$left'");
			}
			$left = $start
		} elsif(($left =~ /^(\d{3,4})\-(\d{3,4})$/) || ($left =~ /^Bet (\d{3,4})\sand\s(\d{3,4})$/i)) {
			# Comparing with a date range, e.g. "BET 1830 AND 1832 <=> 1830-02-06"
			my ($from, $to) = ($1, $2);
			if($from == $to) {
				$complain->("from == to, $from");
				$left = $from;
			} elsif($from > $to) {
				print STDERR "datecmp(): $from > $to in daterange '$left'\n";
				my $i = 0;
				while((my @call_details = caller($i++))) {
					print STDERR "\t", colored($call_details[2] . ' of ' . $call_details[1], 'red'), "\n";
				}
				return 0;
			} else {
				if(ref($right)) {
					$right = $right->year();
				} else {
					my @r = $dfg->parse_datetime({ date => $right, quiet => 1 });
					if(!defined($r[0])) {
						if($right =~ /[\s\/](\d{4})$/) {
							# e.g. cmp "1891 <=> Oct/Nov/Dec 1892"
							# or 5/27/1872
							my $year = $1;
							if(ref($left)) {
								if($left->year() != $year) {
									return $left->year() <=> $year;
								}
							} else {
								if($left != $year) {
									return $left <=> $year;
								}
							}
						}
						# TODO: throw an error that we can catch
						my $i = 0;
						while((my @call_details = caller($i++))) {
							print STDERR "\t", colored($call_details[2] . ' of ' . $call_details[1], 'red'), "\n";
						}
						die "Date parse failure: right = '$right' ($left <=> $right)";
					}
					$right = $r[0]->year();
				}
				if($right < $from) {
					return -1;
				}
				if($right > $to) {
					return 1;
				}
				if($right == $from) {
					return 0;
				}
				print STDERR "datecmp(): Can't compare $left with $right\n";
				my $i = 0;
				while((my @call_details = caller($i++))) {
					print STDERR "\t", colored($call_details[2] . ' of ' . $call_details[1], 'red'), "\n";
				}
				return 0;
			}
		} elsif($left !~ /^\d{3,4}$/) {
			if($left =~ /^\d{4}\-\d{2}\-\d{2}$/) {
				# e.g. 1941-08-02
			} elsif(($left !~ /[a-z]/i) || ($left =~ /[a-z]$/)) {
				my $i = 0;
				while((my @call_details = caller($i++))) {
					print STDERR "\t", colored($call_details[2] . ' of ' . $call_details[1], 'red'), "\n";
				}
				die "Date parse failure: left = '$left' ($left <=> $right)";
			}

			my @l = $dfg->parse_datetime({ date => $left, quiet => 1 });
			my $rc = $l[1] || $l[0];
			if(!defined($rc)) {
				my $i = 0;
				while((my @call_details = caller($i++))) {
					print STDERR "\t", colored($call_details[2] . ' of ' . $call_details[1], 'red'), "\n";
				}
				die "Date parse failure: left = '$left' ($left <=> $right)";
			}
			$left = $rc;
		}
	}
	if(!ref($right)) {
		if($right =~ /^bef/i) {
			if($left =~ /^\d+$/) {
				# For example, comparing 1939 <=> bef 1 Jun 1965
				if($right =~ /\s(\d+)$/) {
					return $left <=> $1;
				}
			}
			print STDERR "$left <=> $right: Before not handled\n";
			my $i = 0;
			while((my @call_details = caller($i++))) {
				print STDERR "\t", colored($call_details[2] . ' of ' . $call_details[1], 'red'), "\n";
			}
			return 0;
		}
		if($right =~ /^(Abt|ca?)\.?\s+(.+)/i) {
			$right = $2;
		} elsif(($right =~ /\//) && ($right =~ /^[a-z\/]+\s+(.+)/i)) {
			# e.g. "Oct/Nov/Dec 1950"
			$right = $1;
		}

		if($right =~ /^\d{3,4}$/) {
			if(ref($left)) {
				return $left->year() <=> $right;
			}
			return $left <=> $right;
		}

		if($right =~ /^(\d{3,4})\-(\d{3,4})$/) {
			# Comparing with a date range
			my ($from, $to) = ($1, $2);
			if($from == $to) {
				$complain->("from == to, $from");
				$right = $from;
			} elsif($from > $to) {
				print STDERR "datecmp(): $from > $to in daterange '$right'\n";
				my $i = 0;
				while((my @call_details = caller($i++))) {
					print STDERR "\t", colored($call_details[2] . ' of ' . $call_details[1], 'red'), "\n";
				}
				return 0;
			} else {
				if(ref($left)) {
					$left = $left->year();
				}
				if($left < $from) {
					return -1;
				}
				if($left > $to) {
					return 1;
				}
				if($left == $from) {
					return 0;
				}
				print STDERR "datecmp(): Can't compare $left with $right\n";
				my $i = 0;
				while((my @call_details = caller($i++))) {
					print STDERR "\t", colored($call_details[2] . ' of ' . $call_details[1], 'red'), "\n";
				}
				return 0;
			}
		}

		if($left =~ /(\d{3,4})/) {
			my $start = $1;
			if($right =~ /(\d{3,4})/) {
				# e.g. 26 Aug 1744 <=> 1673-02-22T00:00:00
				my $end = $1;
				if($start != $end) {
					return $start <=> $end;
				}
			}
		}

		# if(!$dfg->parse_datetime($right)) {
			# my $i = 0;
			# while((my @call_details = caller($i++))) {
				# print STDERR "\t", colored($call_details[2] . ' of ' . $call_details[1], 'red'), "\n";
			# }
			# die join('<=>', @_);
		# }
		my @r = $dfg->parse_datetime({ date => $right, quiet => 1 });
		if(!defined($r[0])) {
			if($right =~ /[\s\/](\d{4})$/) {
				# e.g. cmp "1891 <=> Oct/Nov/Dec 1892"
				# or 5/27/1872
				my $year = $1;
				if(ref($left)) {
					if($left->year() != $year) {
						return $left->year() <=> $year;
					}
				} else {
					if($left != $year) {
						return $left <=> $year;
					}
				}
			}
			# TODO: throw an error that we can catch
			my $i = 0;
			while((my @call_details = caller($i++))) {
				print STDERR "\t", colored($call_details[2] . ' of ' . $call_details[1], 'red'), "\n";
			}
			die "Date parse failure: right = '$right' ($left <=> $right)";
		}
		$right = $r[0];
	}
	if((!ref($left)) && ref($right)) {
		return $left <=> $right->year();
	}
	if(ref($left) && (!ref($right))) {
		return $left->year() <=> $right;
	}

	return $left <=> $right;
}

1;
