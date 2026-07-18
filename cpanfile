# Generated from Makefile.PL using makefilepl2cpanfile

requires 'perl', '5.008';

requires 'Carp';
requires 'DateTime::Format::Genealogy', '0.11';
requires 'ExtUtils::MakeMaker', '6.64';
requires 'Readonly';
requires 'Scalar::Util';
requires 'Term::ANSIColor';
requires 'autodie', '2.06';

on 'test' => sub {
	requires 'FindBin';
	requires 'IPC::System::Simple';
	requires 'Test::DescribeMe';
	requires 'Test::Memory::Cycle';
	requires 'Test::Mockingbird';
	requires 'Test::Most';
	requires 'Test::Needs';
	requires 'Test::Returns';
	requires 'Test::Warnings';
	requires 'Test::Without::Module';
};

on 'develop' => sub {
	requires 'Devel::Cover';
	requires 'Perl::Critic';
	requires 'Test::Pod';
	requires 'Test::Pod::Coverage';
};
