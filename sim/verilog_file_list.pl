#!/usr/local/bin/perl5

#use strict;

#my $filename    = "verilog_file_list.f";
#open (OUTFILE, "> $filename") or die "Couldn't open file $filename: $!\n\n";

&find_fileindir("../");
sub find_fileindir(){
  local($dir) = @_;
  opendir(DIR,"$dir"|| die "can't open this$dir");
  local @files =readdir(DIR);
  closedir(DIR);
  for $file (@files){
    next if($file=~m/\.$/ || $file =~m/\.\.$/);
    if ($file=~/\.(v)$/i){
       print "$dir$file \n";
    }
    elsif(-d"$dir/$file" && $file ne "IP_core_idle"){
           find_fileindir("$dir/$file" );
    }
  }
}

