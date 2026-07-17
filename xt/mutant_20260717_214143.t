#!/usr/bin/env perl
# Auto-generated mutant test stubs
# Generated: 2026-07-17 21:41:43
# Generator: scripts/test-generator-index
#
# DO NOT COMMIT without completing the TODO sections.
#
# HIGH/MEDIUM difficulty survivors have TODO stubs — these need real tests.
# LOW difficulty survivors appear as comment hints — worth improving.
#
# Stubs call new() for modules with a constructor, or show a class method
# placeholder for modules without one. Add arguments as needed.

use strict;
use warnings;
use Test::More;

use_ok('Date::Cmp');

################################################################
# FILE: lib/Date/Cmp.pm
################################################################
# --- SURVIVORS (TODO stubs) ---

# --- SURVIVOR: COND_INV_180_3 (MEDIUM) line 180 in datecmp() ---
# Source:  if(!defined($left)) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_180_3 line 180 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 180 in datecmp() to detect the mutant
    fail('COND_INV_180_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_183_3 (MEDIUM) line 183 in datecmp() ---
# Source:  if(!defined($right)) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_183_3 line 183 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 183 in datecmp() to detect the mutant
    fail('COND_INV_183_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_241_3 (MEDIUM) line 241 in datecmp() ---
# Source:  if($right =~ /(\d{3,4})$/) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_241_3 line 241 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 241 in datecmp() to detect the mutant
    fail('COND_INV_241_3: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_244_5 (MEDIUM) line 244 in datecmp() ---
# Source:  return $yol <=> $yor;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_244_5 line 244 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 244 in datecmp() to detect the mutant
    fail('BOOL_NEGATE_244_5: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_259_5 (MEDIUM) line 259 in datecmp() ---
# Source:  return $lyear <=> $ryear;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_259_5 line 259 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 259 in datecmp() to detect the mutant
    fail('BOOL_NEGATE_259_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_263_4 (MEDIUM) line 263 in datecmp() ---
# Source:  if($right =~ /^\d+$/) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_263_4 line 263 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 263 in datecmp() to detect the mutant
    fail('COND_INV_263_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_265_5 (MEDIUM) line 265 in datecmp() ---
# Source:  if($left =~ /\s(\d+)$/) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_265_5 line 265 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 265 in datecmp() to detect the mutant
    fail('COND_INV_265_5: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_267_12_> (HIGH) line 267 in datecmp() ---
# Source:  if($1 < $right) {
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (4 variants — one test should kill all):
#   Numeric boundary flip < to >
#   Numeric boundary flip < to <=
#   Numeric boundary flip < to >=
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_267_12_> line 267 in datecmp()';
    # Suggested boundary values to test: 0, 1, 2
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 267 in datecmp() to detect the mutant
    fail('NUM_BOUNDARY_267_12_>: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_268_7 (MEDIUM) line 268 in datecmp() ---
# Source:  return -1;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_268_7 line 268 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 268 in datecmp() to detect the mutant
    fail('BOOL_NEGATE_268_7: replace with real assertion');
}

# --- SURVIVOR: COND_INV_272_4 (MEDIUM) line 272 in datecmp() ---
# Source:  if($right =~ /(\d{4})/) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_272_4 line 272 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 272 in datecmp() to detect the mutant
    fail('COND_INV_272_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_275_5 (MEDIUM) line 275 in datecmp() ---
# Source:  if($left =~ /^bef/i) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_275_5 line 275 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 275 in datecmp() to detect the mutant
    fail('COND_INV_275_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_276_6 (MEDIUM) line 276 in datecmp() ---
# Source:  if($left =~ /(\d{4})/) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_276_6 line 276 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 276 in datecmp() to detect the mutant
    fail('COND_INV_276_6: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_277_13_> (HIGH) line 277 in datecmp() ---
# Source:  if($1 < $ryear) {
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (4 variants — one test should kill all):
#   Numeric boundary flip < to >
#   Numeric boundary flip < to <=
#   Numeric boundary flip < to >=
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_277_13_> line 277 in datecmp()';
    # Suggested boundary values to test: 0, 1, 2
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 277 in datecmp() to detect the mutant
    fail('NUM_BOUNDARY_277_13_>: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_278_8 (MEDIUM) line 278 in datecmp() ---
# Source:  return -1;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_278_8 line 278 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 278 in datecmp() to detect the mutant
    fail('BOOL_NEGATE_278_8: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_308_5 (MEDIUM) line 308 in datecmp() ---
# Source:  return $start <=> $end;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_308_5 line 308 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 308 in datecmp() to detect the mutant
    fail('BOOL_NEGATE_308_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_312_3 (MEDIUM) line 312 in datecmp() ---
# Source:  if($left =~ /(\d{3,4})/) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_312_3 line 312 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 312 in datecmp() to detect the mutant
    fail('COND_INV_312_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_315_5 (MEDIUM) line 315 in datecmp() ---
# Source:  if($right =~ /(\d{3,4})/) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_315_5 line 315 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 315 in datecmp() to detect the mutant
    fail('COND_INV_315_5: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_318_16_== (HIGH) line 318 in datecmp() ---
# Source:  if($start != $end) {
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (2 variants — one test should kill all):
#   Numeric boundary flip != to ==
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_318_16_== line 318 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 318 in datecmp() to detect the mutant
    fail('NUM_BOUNDARY_318_16_==: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_319_7 (MEDIUM) line 319 in datecmp() ---
# Source:  return $start <=> $end;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_319_7 line 319 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 319 in datecmp() to detect the mutant
    fail('BOOL_NEGATE_319_7: replace with real assertion');
}

# --- SURVIVOR: COND_INV_348_7 (MEDIUM) line 348 in datecmp() ---
# Source:  if($right =~ /[\s\/](\d{4})$/) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_348_7 line 348 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 348 in datecmp() to detect the mutant
    fail('COND_INV_348_7: replace with real assertion');
}

# --- SURVIVOR: COND_INV_352_8 (MEDIUM) line 352 in datecmp() ---
# Source:  if($year < $from) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_352_8 line 352 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 352 in datecmp() to detect the mutant
    fail('COND_INV_352_8: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_353_26_== (HIGH) line 353 in datecmp() ---
# Source:  return 1;
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (2 variants — one test should kill all):
#   Numeric boundary flip != to ==
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_353_26_== line 353 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 353 in datecmp() to detect the mutant
    fail('NUM_BOUNDARY_353_26_==: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_354_10 (MEDIUM) line 354 in datecmp() ---
# Source:  } elsif($year > $to) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_354_10 line 354 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 354 in datecmp() to detect the mutant
    fail('BOOL_NEGATE_354_10: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_357_18_== (HIGH) line 357 in datecmp() ---
# Source:  return 0;
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (2 variants — one test should kill all):
#   Numeric boundary flip != to ==
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_357_18_== line 357 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 357 in datecmp() to detect the mutant
    fail('NUM_BOUNDARY_357_18_==: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_358_10 (MEDIUM) line 358 in datecmp() ---
# Source:  }
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_358_10 line 358 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 358 in datecmp() to detect the mutant
    fail('BOOL_NEGATE_358_10: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_382_15_!= (HIGH) line 382 in datecmp() ---
# Source:  }
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (2 variants — one test should kill all):
#   Numeric boundary flip == to !=
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_382_15_!= line 382 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 382 in datecmp() to detect the mutant
    fail('NUM_BOUNDARY_382_15_!=: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_383_6 (MEDIUM) line 383 in datecmp() ---
# Source:  if(($right > $from) && ($right < $to)) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_383_6 line 383 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 383 in datecmp() to detect the mutant
    fail('BOOL_NEGATE_383_6: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_385_16_< (HIGH) line 385 in datecmp() ---
# Source:  return 0;
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (7 variants — one test should kill all):
#   Numeric boundary flip > to <
#   Numeric boundary flip > to >=
#   Numeric boundary flip > to <=
#   Numeric boundary flip < to >
#   Numeric boundary flip < to <=
#   Numeric boundary flip < to >=
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_385_16_< line 385 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 385 in datecmp() to detect the mutant
    fail('NUM_BOUNDARY_385_16_<: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_389_15_!= (HIGH) line 389 in datecmp() ---
# Source:  return 0;
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (2 variants — one test should kill all):
#   Numeric boundary flip == to !=
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_389_15_!= line 389 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 389 in datecmp() to detect the mutant
    fail('NUM_BOUNDARY_389_15_!=: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_398_5 (MEDIUM) line 398 in datecmp() ---
# Source:  } elsif($left !~ /^\d{3,4}$/) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_398_5 line 398 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 398 in datecmp() to detect the mutant
    fail('BOOL_NEGATE_398_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_427_5 (MEDIUM) line 427 in datecmp() ---
# Source:  }
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_427_5 line 427 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 427 in datecmp() to detect the mutant
    fail('COND_INV_427_5: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_428_6 (MEDIUM) line 428 in datecmp() ---
# Source:  }
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_428_6 line 428 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 428 in datecmp() to detect the mutant
    fail('BOOL_NEGATE_428_6: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_464_6 (MEDIUM) line 464 in datecmp() ---
# Source:  return $left <=> $from;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_464_6 line 464 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 464 in datecmp() to detect the mutant
    fail('BOOL_NEGATE_464_6: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_473_5 (MEDIUM) line 473 in datecmp() ---
# Source:  # Comparing with a year only
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_473_5 line 473 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 473 in datecmp() to detect the mutant
    fail('BOOL_NEGATE_473_5: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_489_14_!= (HIGH) line 489 in datecmp() ---
# Source:  }
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (2 variants — one test should kill all):
#   Numeric boundary flip == to !=
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_489_14_!= line 489 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 489 in datecmp() to detect the mutant
    fail('NUM_BOUNDARY_489_14_!=: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_492_34_> (HIGH) line 492 in datecmp() ---
# Source:  return 0;
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (7 variants — one test should kill all):
#   Numeric boundary flip < to >
#   Numeric boundary flip < to <=
#   Numeric boundary flip < to >=
#   Numeric boundary flip > to <
#   Numeric boundary flip > to >=
#   Numeric boundary flip > to <=
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_492_34_> line 492 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 492 in datecmp() to detect the mutant
    fail('NUM_BOUNDARY_492_34_>: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_501_5 (MEDIUM) line 501 in datecmp() ---
# Source:  }
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_501_5 line 501 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 501 in datecmp() to detect the mutant
    fail('BOOL_NEGATE_501_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_505_3 (MEDIUM) line 505 in datecmp() ---
# Source:  if($right =~ /(\d{3,4})/) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_505_3 line 505 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 505 in datecmp() to detect the mutant
    fail('COND_INV_505_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_507_4 (MEDIUM) line 507 in datecmp() ---
# Source:  my $end = $1;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_507_4 line 507 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 507 in datecmp() to detect the mutant
    fail('COND_INV_507_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_525_4 (MEDIUM) line 525 in datecmp() ---
# Source:  # or 5/27/1872
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_525_4 line 525 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 525 in datecmp() to detect the mutant
    fail('COND_INV_525_4: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_530_23_== (HIGH) line 530 in datecmp() ---
# Source:  }
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (2 variants — one test should kill all):
#   Numeric boundary flip != to ==
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_530_23_== line 530 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 530 in datecmp() to detect the mutant
    fail('NUM_BOUNDARY_530_23_==: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_531_7 (MEDIUM) line 531 in datecmp() ---
# Source:  } else {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_531_7 line 531 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 531 in datecmp() to detect the mutant
    fail('BOOL_NEGATE_531_7: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_535_7 (MEDIUM) line 535 in datecmp() ---
# Source:  }
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_535_7 line 535 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 535 in datecmp() to detect the mutant
    fail('BOOL_NEGATE_535_7: replace with real assertion');
}

# --- SURVIVOR: COND_INV_548_2 (MEDIUM) line 548 in datecmp() ---
# Source:  }
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_548_2 line 548 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 548 in datecmp() to detect the mutant
    fail('COND_INV_548_2: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_549_3 (MEDIUM) line 549 in datecmp() ---
# Source:  if(ref($left) && (!ref($right))) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_549_3 line 549 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 549 in datecmp() to detect the mutant
    fail('BOOL_NEGATE_549_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_551_2 (MEDIUM) line 551 in datecmp() ---
# Source:  }
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_551_2 line 551 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 551 in datecmp() to detect the mutant
    fail('COND_INV_551_2: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_552_3 (MEDIUM) line 552 in datecmp() ---
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_552_3 line 552 in datecmp()';
    # NOTE: Date::Cmp has no constructor — call class methods directly.
    # e.g. my $result = Date::Cmp->method(...);
    # TODO: exercise line 552 in datecmp() to detect the mutant
    fail('BOOL_NEGATE_552_3: replace with real assertion');
}

# --- LOW DIFFICULTY HINTS (comment stubs) ---

# --- LOW HINT: RETURN_UNDEF_244_5 line 244 in datecmp() ---
# Source:  return $yol <=> $yor;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: Date::Cmp has no constructor — call class methods directly.
# e.g. my $result = Date::Cmp->method(...);
# ok($result, 'RETURN_UNDEF_244_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_259_5 line 259 in datecmp() ---
# Source:  return $lyear <=> $ryear;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: Date::Cmp has no constructor — call class methods directly.
# e.g. my $result = Date::Cmp->method(...);
# ok($result, 'RETURN_UNDEF_259_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_268_7 line 268 in datecmp() ---
# Source:  return -1;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: Date::Cmp has no constructor — call class methods directly.
# e.g. my $result = Date::Cmp->method(...);
# ok($result, 'RETURN_UNDEF_268_7: add assertion here');

# --- LOW HINT: RETURN_UNDEF_278_8 line 278 in datecmp() ---
# Source:  return -1;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: Date::Cmp has no constructor — call class methods directly.
# e.g. my $result = Date::Cmp->method(...);
# ok($result, 'RETURN_UNDEF_278_8: add assertion here');

# --- LOW HINT: RETURN_UNDEF_308_5 line 308 in datecmp() ---
# Source:  return $start <=> $end;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: Date::Cmp has no constructor — call class methods directly.
# e.g. my $result = Date::Cmp->method(...);
# ok($result, 'RETURN_UNDEF_308_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_319_7 line 319 in datecmp() ---
# Source:  return $start <=> $end;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: Date::Cmp has no constructor — call class methods directly.
# e.g. my $result = Date::Cmp->method(...);
# ok($result, 'RETURN_UNDEF_319_7: add assertion here');

# --- LOW HINT: RETURN_UNDEF_354_10 line 354 in datecmp() ---
# Source:  } elsif($year > $to) {
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: Date::Cmp has no constructor — call class methods directly.
# e.g. my $result = Date::Cmp->method(...);
# ok($result, 'RETURN_UNDEF_354_10: add assertion here');

# --- LOW HINT: RETURN_UNDEF_358_10 line 358 in datecmp() ---
# Source:  }
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: Date::Cmp has no constructor — call class methods directly.
# e.g. my $result = Date::Cmp->method(...);
# ok($result, 'RETURN_UNDEF_358_10: add assertion here');

# --- LOW HINT: RETURN_UNDEF_383_6 line 383 in datecmp() ---
# Source:  if(($right > $from) && ($right < $to)) {
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: Date::Cmp has no constructor — call class methods directly.
# e.g. my $result = Date::Cmp->method(...);
# ok($result, 'RETURN_UNDEF_383_6: add assertion here');

# --- LOW HINT: RETURN_UNDEF_398_5 line 398 in datecmp() ---
# Source:  } elsif($left !~ /^\d{3,4}$/) {
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: Date::Cmp has no constructor — call class methods directly.
# e.g. my $result = Date::Cmp->method(...);
# ok($result, 'RETURN_UNDEF_398_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_428_6 line 428 in datecmp() ---
# Source:  }
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: Date::Cmp has no constructor — call class methods directly.
# e.g. my $result = Date::Cmp->method(...);
# ok($result, 'RETURN_UNDEF_428_6: add assertion here');

# --- LOW HINT: RETURN_UNDEF_464_6 line 464 in datecmp() ---
# Source:  return $left <=> $from;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: Date::Cmp has no constructor — call class methods directly.
# e.g. my $result = Date::Cmp->method(...);
# ok($result, 'RETURN_UNDEF_464_6: add assertion here');

# --- LOW HINT: RETURN_UNDEF_473_5 line 473 in datecmp() ---
# Source:  # Comparing with a year only
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: Date::Cmp has no constructor — call class methods directly.
# e.g. my $result = Date::Cmp->method(...);
# ok($result, 'RETURN_UNDEF_473_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_501_5 line 501 in datecmp() ---
# Source:  }
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: Date::Cmp has no constructor — call class methods directly.
# e.g. my $result = Date::Cmp->method(...);
# ok($result, 'RETURN_UNDEF_501_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_531_7 line 531 in datecmp() ---
# Source:  } else {
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: Date::Cmp has no constructor — call class methods directly.
# e.g. my $result = Date::Cmp->method(...);
# ok($result, 'RETURN_UNDEF_531_7: add assertion here');

# --- LOW HINT: RETURN_UNDEF_535_7 line 535 in datecmp() ---
# Source:  }
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: Date::Cmp has no constructor — call class methods directly.
# e.g. my $result = Date::Cmp->method(...);
# ok($result, 'RETURN_UNDEF_535_7: add assertion here');

# --- LOW HINT: RETURN_UNDEF_549_3 line 549 in datecmp() ---
# Source:  if(ref($left) && (!ref($right))) {
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: Date::Cmp has no constructor — call class methods directly.
# e.g. my $result = Date::Cmp->method(...);
# ok($result, 'RETURN_UNDEF_549_3: add assertion here');

# --- LOW HINT: RETURN_UNDEF_552_3 line 552 in datecmp() ---
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: Date::Cmp has no constructor — call class methods directly.
# e.g. my $result = Date::Cmp->method(...);
# ok($result, 'RETURN_UNDEF_552_3: add assertion here');

done_testing();
