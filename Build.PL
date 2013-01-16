
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "List prerequisites of a Perl module",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "App-ListPrereqs",
  "dist_version" => "0.01",
  "license" => "perl",
  "module_name" => "App::ListPrereqs",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "CHI" => "0.50",
    "Log::Any" => 0,
    "MetaCPAN::API" => 0,
    "Perinci::CmdLine" => "0.68",
    "perl" => "5.010001"
  },
  "script_files" => [
    "bin/list-prereqs"
  ]
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
