use strict;
use warnings;
use ExtUtils::MakeMaker;

my $package_name = "PDL::IO::Dicom";
(my $repo = $package_name) =~ s#::#-#g;
$repo = "PDLPorters/$repo";
WriteMakefile(
  NAME => "PDL::IO::Dicom",
  VERSION_FROM => 'Dicom.pm',
  AUTHOR => 'PerlDL Developers <pdl-general@lists.sourceforge.net>',
  CONFIGURE_REQUIRES => {
    'ExtUtils::MakeMaker' => 0,
  },
  PREREQ_PM => {
    'PDL' => '2.094',
  },
  META_MERGE => {
    "meta-spec" => { version => 2 },
    resources => {
      homepage => 'http://pdl.perl.org/',
      bugtracker  => {web=>"https://github.com/$repo/issues"},
      repository  => {
        url => "git://github.com/$repo.git",
        type => 'git',
        web => "https://github.com/$repo",
      },
      x_IRC => 'irc://irc.perl.org/#pdl',
    },
  },
);
