
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'UNIVERSAL-implant',
  NAME      => 'UNIVERSAL::implant',
  AUTHOR    => 'shelling\ \<shelling\@cpan\.org\>',
  ABSTRACT  => 'UNIVERSAL Class::Implant',
  VERSION   => '0.01_01',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'mit') : ()),
  PREREQ_PM    => {
    "Class::Implant" => '0',
  },
);
