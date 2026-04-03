# Generated from Makefile.PL using makefilepl2cpanfile

requires 'perl', '5.008';

requires 'DateTime::Format::Genealogy', '0.11';
requires 'ExtUtils::MakeMaker', '6.64';
requires 'Scalar::Util';
requires 'Term::ANSIColor';

on 'test' => sub {
	requires 'Test::DescribeMe';
	requires 'Test::Most';
	requires 'Test::Needs';
	requires 'Test::Returns';
	requires 'Test::Warnings';
};

on 'develop' => sub {
	requires 'Devel::Cover';
	requires 'Perl::Critic';
	requires 'Test::Pod';
	requires 'Test::Pod::Coverage';
};
