#!/usr/bin/perl
#               Apache License
#                           Version 2.0, January 2004
#                        http://www.apache.org/licenses/
#
#   TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION
#
#   1. Definitions.
#
#      "License" shall mean the terms and conditions for use, reproduction,
#      and distribution as defined by Sections 1 through 9 of this document.
#
#      "Licensor" shall mean the copyright owner or entity authorized by
#      the copyright owner that is granting the License.
#
#      "Legal Entity" shall mean the union of the acting entity and all
#      other entities that control, are controlled by, or are under common
#      control with that entity. For the purposes of this definition,
#      "control" means (i) the power, direct or indirect, to cause the
#      direction or management of such entity, whether by contract or
#      otherwise, or (ii) ownership of fifty percent (50%) or more of the
#      outstanding shares, or (iii) beneficial ownership of such entity.
#
#      "You" (or "Your") shall mean an individual or Legal Entity
#      exercising permissions granted by this License.
#
#      "Source" form shall mean the preferred form for making modifications,
#      including but not limited to software source code, documentation
#      source, and configuration files.
#
#      "Object" form shall mean any form resulting from mechanical
#      transformation or translation of a Source form, including but
#      not limited to compiled object code, generated documentation,
#      and conversions to other media types.
#
#      "Work" shall mean the work of authorship, whether in Source or
#      Object form, made available under the License, as indicated by a
#      copyright notice that is included in or attached to the work
#      (an example is provided in the Appendix below).
#
#      "Derivative Works" shall mean any work, whether in Source or Object
#      form, that is based on (or derived from) the Work and for which the
#      editorial revisions, annotations, elaborations, or other modifications
#      represent, as a whole, an original work of authorship. For the purposes
#      of this License, Derivative Works shall not include works that remain
#      separable from, or merely link (or bind by name) to the interfaces of,
#      the Work and Derivative Works thereof.
#
#      "Contribution" shall mean any work of authorship, including
#      the original version of the Work and any modifications or additions
#      to that Work or Derivative Works thereof, that is intentionally
#      submitted to Licensor for inclusion in the Work by the copyright owner
#      or by an individual or Legal Entity authorized to submit on behalf of
#      the copyright owner. For the purposes of this definition, "submitted"
#      means any form of electronic, verbal, or written communication sent
#      to the Licensor or its representatives, including but not limited to
#      communication on electronic mailing lists, source code control systems,
#      and issue tracking systems that are managed by, or on behalf of, the
#      Licensor for the purpose of discussing and improving the Work, but
#      excluding communication that is conspicuously marked or otherwise
#      designated in writing by the copyright owner as "Not a Contribution."
#
#      "Contributor" shall mean Licensor and any individual or Legal Entity
#      on behalf of whom a Contribution has been received by Licensor and
#      subsequently incorporated within the Work.
#
#   2. Grant of Copyright License. Subject to the terms and conditions of
#      this License, each Contributor hereby grants to You a perpetual,
#      worldwide, non-exclusive, no-charge, royalty-free, irrevocable
#      copyright license to reproduce, prepare Derivative Works of,
#      publicly display, publicly perform, sublicense, and distribute the
#      Work and such Derivative Works in Source or Object form.
#
#   3. Grant of Patent License. Subject to the terms and conditions of
#      this License, each Contributor hereby grants to You a perpetual,
#      worldwide, non-exclusive, no-charge, royalty-free, irrevocable
#      (except as stated in this section) patent license to make, have made,
#      use, offer to sell, sell, import, and otherwise transfer the Work,
#      where such license applies only to those patent claims licensable
#      by such Contributor that are necessarily infringed by their
#      Contribution(s) alone or by combination of their Contribution(s)
#      with the Work to which such Contribution(s) was submitted. If You
#      institute patent litigation against any entity (including a
#      cross-claim or counterclaim in a lawsuit) alleging that the Work
#      or a Contribution incorporated within the Work constitutes direct
#      or contributory patent infringement, then any patent licenses
#      granted to You under this License for that Work shall terminate
#      as of the date such litigation is filed.
#
#   4. Redistribution. You may reproduce and distribute copies of the
#      Work or Derivative Works thereof in any medium, with or without
#      modifications, and in Source or Object form, provided that You
#      meet the following conditions:
#
#      (a) You must give any other recipients of the Work or
#          Derivative Works a copy of this License; and
#
#      (b) You must cause any modified files to carry prominent notices
#          stating that You changed the files; and
#
#      (c) You must retain, in the Source form of any Derivative Works
#          that You distribute, all copyright, patent, trademark, and
#          attribution notices from the Source form of the Work,
#          excluding those notices that do not pertain to any part of
#          the Derivative Works; and
#
#      (d) If the Work includes a "NOTICE" text file as part of its
#          distribution, then any Derivative Works that You distribute must
#          include a readable copy of the attribution notices contained
#          within such NOTICE file, excluding those notices that do not
#          pertain to any part of the Derivative Works, in at least one
#          of the following places: within a NOTICE text file distributed
#          as part of the Derivative Works; within the Source form or
#          documentation, if provided along with the Derivative Works; or,
#          within a display generated by the Derivative Works, if and
#          wherever such third-party notices normally appear. The contents
#          of the NOTICE file are for informational purposes only and
#          do not modify the License. You may add Your own attribution
#          notices within Derivative Works that You distribute, alongside
#          or as an addendum to the NOTICE text from the Work, provided
#          that such additional attribution notices cannot be construed
#          as modifying the License.
#
#      You may add Your own copyright statement to Your modifications and
#      may provide additional or different license terms and conditions
#      for use, reproduction, or distribution of Your modifications, or
#      for any such Derivative Works as a whole, provided Your use,
#      reproduction, and distribution of the Work otherwise complies with
#      the conditions stated in this License.
#
#   5. Submission of Contributions. Unless You explicitly state otherwise,
#      any Contribution intentionally submitted for inclusion in the Work
#      by You to the Licensor shall be under the terms and conditions of
#      this License, without any additional terms or conditions.
#      Notwithstanding the above, nothing herein shall supersede or modify
#      the terms of any separate license agreement you may have executed
#      with Licensor regarding such Contributions.
#
#   6. Trademarks. This License does not grant permission to use the trade
#      names, trademarks, service marks, or product names of the Licensor,
#      except as required for reasonable and customary use in describing the
#      origin of the Work and reproducing the content of the NOTICE file.
#
#   7. Disclaimer of Warranty. Unless required by applicable law or
#      agreed to in writing, Licensor provides the Work (and each
#      Contributor provides its Contributions) on an "AS IS" BASIS,
#      WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#      implied, including, without limitation, any warranties or conditions
#      of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A
#      PARTICULAR PURPOSE. You are solely responsible for determining the
#      appropriateness of using or redistributing the Work and assume any
#      risks associated with Your exercise of permissions under this License.
#
#   8. Limitation of Liability. In no event and under no legal theory,
#      whether in tort (including negligence), contract, or otherwise,
#      unless required by applicable law (such as deliberate and grossly
#      negligent acts) or agreed to in writing, shall any Contributor be
#      liable to You for damages, including any direct, indirect, special,
#      incidental, or consequential damages of any character arising as a
#      result of this License or out of the use or inability to use the
#      Work (including but not limited to damages for loss of goodwill,
#      work stoppage, computer failure or malfunction, or any and all
#      other commercial damages or losses), even if such Contributor
#      has been advised of the possibility of such damages.
#
#   9. Accepting Warranty or Additional Liability. While redistributing
#      the Work or Derivative Works thereof, You may choose to offer,
#      and charge a fee for, acceptance of support, warranty, indemnity,
#      or other liability obligations and/or rights consistent with this
#      License. However, in accepting such obligations, You may act only
#      on Your own behalf and on Your sole responsibility, not on behalf
#      of any other Contributor, and only if You agree to indemnify,
#      defend, and hold each Contributor harmless for any liability
#      incurred by, or claims asserted against, such Contributor by reason
#      of your accepting any such warranty or additional liability.
#
#   END OF TERMS AND CONDITIONS
#
#   APPENDIX: How to apply the Apache License to your work.
#
#      To apply the Apache License to your work, attach the following
#      boilerplate notice, with the fields enclosed by brackets "[]"
#      replaced with your own identifying information. (Don't include
#      the brackets!)  The text should be enclosed in the appropriate
#      comment syntax for the file format. We also recommend that a
#      file or class name and description of purpose be included on the
#      same "printed page" as the copyright notice for easier
#      identification within third-party archives.
#
#   Copyright [2015] [Cloudera Inc.]
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

use Getopt::Long;
use threads;
use File::Basename;

my $help     = '';
my $bs       = '';
my $count    = '';
my $vector   = '';
my $mode     = '';
my $dir      = '';
my $logfile  = '';
my $ddopt    = '';
my $filelist = '';

GetOptions(
    'help'       => \$help,
    'bs=s'       => \$bs,
    'count=s'    => \$count,
    'vector=s'   => \$vector,
    'dir=s'      => \$dir,
    'logfile=s'  => \$logfile,
    'mode=s'     => \$mode,
    'filelist=s' => \$filelist,
    'ddopt=s'    => \$ddopt
);

chomp( $count, $vector, $mode, $bs, $dir, $logfile, $ddopt );

if ($help) {
    &printUsage && exit(0);
}

if ( !$bs ) {
    $bs = "64K";
}

if ( !$count ) {
    $count = "1000";
}
if ( !$mode ) {
    $mode = "serial";
}

if ( !$ddopt ) {
    $ddopt = "conv=fdatasync";
}
#if ( $vector != "cpuSpeed" ) {
#    if ( !$dir and !$filelist ) {
#        print "unable to proceed without valid input directory!\n"
#          && &printUsage
#          && exit(1);
#    }
#}

if ( !$filelist ) {
    $filelist = "/var/tmp/flist.txt";

#print "There is no file list specified for read testing...please re-run with the --filelist=/path/to/filelist.txt option\n" && exit(1);
}

if ( !$logfile ) {
    $logfile = "/var/tmp/diskbench.log";
}

sub printUsage {
    print
"Usage: $0 --help|--bs=1M --count=1000 --vector=<cpuSpeed|readSpeed|writeSpeed> --mode=serial --dir=/data/1/,/data/2,/data/3,/data/4,/data/5 \
--logfile=/my/log/file --ddopt=<iflag=direct|oflag=direct|conv=fdatasync> 
	--help 	- print this message
	--bs - Block size in K or M, defaults to 64K, to match HDFS write chunk size
	--count - number of blocks
	--vector - options are readSpeed,writeSpeed and cpuSpeed. Run cpuSpeed in parallel mode
	--mode - options are serial or parallel. Parallel mode will try to launch multiple read or write operations in parallel
	--logfile - pass the name of the logfile you want to capture your output to
	--ddopt - pass the dd(1m) option you want to use. for eg: oflag=direct for direct write, iflag=direct for direct read, defaults to conv=fdatasync
	--filelist - list of input files to read from
	--dir - directores where to run this benchmarks. Assumption is that each directory is a disk mountpoint to be benchmarked\n";
}

my $dd = "/bin/dd";

if ($filelist) {
    chomp $filelist;
}

sub whatsMyBS {
    my $input = shift;
    chomp $input;
    if ( $input =~ m/M$/i ) {
        $input =~ s/M//i;
        $input = $input * 1024 * 1024;
    }
    elsif ( $input =~ m/K$/i ) {
        $input =~ s/K//i;
        $input = $input * 1024;
    }
    elsif ( $input =~ m/G$/ / i ) {
        $input =~ s/G//i;
        $input = $input * 1024 * 1024 * 1024;
    }
    else {
        print
"$input is unacceptable. Only choose values in units of k,m and g - eg: 64K, 1M, 1G.";
    }
    return $input;
}

sub runCpuBM {
    my $cpuBM = "/usr/bin/md5sum";
    my $cbs   = &whatsMyBS($bs);
    chomp $cbs;
    my $start  = time;
    my $cpuOpt = "if=/dev/zero bs=$cbs count=$count|$cpuBM";
    open( WLOG, ">> $logfile" ) or die "Unable to write to $logfile: $! \n";
    print WLOG "Running $dd $cpuOpt ...\n";
    qx/$dd $cpuOpt/ or die "Unable to run $dd $cpuOpt : $! \n";
    my $size     = ( $cbs * $count ) / (1024);
    my $duration = time - $start;
    my $thruput  = $size / $duration;
    printf WLOG
      "$cpuBM of $size KB processed in $duration seconds, Thruput %.2f KB/s\n",
      $thruput;
    close(WLOG);
    return (0);
}

sub runWriteBM {
    my $mntpt = shift;
    chomp $mntpt;
    my $name = qx/uuidgen/;
    chomp $name;
    $name = $mntpt . "/" . $name . "." . "dat";
    open( WLIST, ">> $filelist" ) or die " Unable to write to $filelist
        : $! \n ";
    print WLIST "$name\n";
    close(WLIST);
    chomp $bs;
    my $bs   = &whatsMyBS($bs);
    my $size  = ( $bs * $count ) / (1024);
    my $start = time;
    my $wropt = "if=/dev/zero of=$name bs=$bs count=$count $ddopt";

    #print "Running $dd $wropt \n";
    qx/$dd $wropt/;
    open( WLOG, " >> $logfile" )
      or die " Unable to write to $logfile: $! \n ";
    my $duration = time - $start;
    my $thruput = $size / $duration;
    printf WLOG
      "$name sized $size KB written in $duration seconds, Thruput %.2f KB/s\n",
      $thruput;
    close(WLOG);
    return (0);
}

sub runReadBM {
    my $readfile = shift;
    my $ddopt    = "iflag=direct";
    chomp $readfile;
    chomp $bs;
    my $bs   = &whatsMyBS($bs);
    my $size  = ($bs * $count) / (1024);
    my $start = time;
    my $rdopt = "if=$readfile of=/dev/null bs=$bs count=$count $ddopt";

    #print "Running $dd $rdopt \n";
    qx/$dd $rdopt/;
    open( WLOG, ">> $logfile" ) or die " Unable to write to $logfile
        : $! \n ";
    my $duration = time - $start;
    my $thruput = $size / $duration;
    printf WLOG
      "$readfile sized $size KB read in $duration seconds, Thruput %.2f KB/s\n",
      $thruput;
    close(WLOG);
    return (0);
}

# Run the benchmark
#
print "Running $vector in $mode...\n";

my $pid = fork();
if ( !$pid ) {
    my $outdir   = $$;
    my $collectl = "/usr/bin/collectl";
    if ( !-f $collectl ) {
        print
"$collectl is not present on the system...will continue running without collecting OS stats: \n";
        exit;
    }
    else {
        my $colopt = "-sdmnc -i 5 -P -f /var/tmp/$outdir";
        exec("/usr/bin/collectl -sdDmnc -i 5 -P -f /var/tmp/$outdir")
          or die "Could not exec: !$\n";
    }
} else {
    # provide a slight delay to ensure collectl detection branch has finished
    select(undef, undef, undef, 0.1);
}

# If we are going to run the cpu benchmark, run it in parallel on n-1 CPUs,
# where n is the total number of CPUs on the node

if ( $vector =~ m/cpuSpeed/i ) {
    my $lscpu    = "/usr/bin/lscpu";
    my $lscpuopt = "-p|grep -v \"^#\"|wc -l";
    my $numcpus  = qx/$lscpu $lscpuopt/
      or die "Unable to run $lscpu $lscpuopt :$! \n";
    my $totalcpus;
    if ( $numcpus > 1 ) {
        $totalcpus = $numcpus;
        chomp $totalcpus;
        $numcpus = $numcpus - 1
          ; #Ensure that there is always one free CPU while running this benchmark, unless there is only one CPU on the system
    }
    print
"Running $numcpus of parallel CPU benchmarks where $totalcpus total CPUs on the host\n";
    while ( $numcpus > 0 ) {
        threads->create( \&runCpuBM );
        $numcpus = $numcpus - 1;
    }
    while ( threads->list ) {
        for my $joinable ( threads->list(threads::joinable) ) {
            $joinable->join;
        }
    }
}
elsif ( $vector =~ m/writeSpeed/i ) {
    chomp $dir;
    my @disks = split( ',', $dir );
    my $numdirs = @disks;

    if ( $mode =~ m/serial/ ) {
        for my $mntpt (@disks) {
            print "$mntpt \n";
            &runWriteBM($mntpt);
        }
    }
    elsif ( $mode =~ m/parallel/ ) {
        foreach my $mntpt (@disks) {
            print "$mntpt \n";
            threads->create( \&runWriteBM, $mntpt );
        }
        while ( threads->list ) {
            for my $joinable ( threads->list(threads::joinable) ) {
                $joinable->join;
            }
        }
    }
    else {
        print "Unknown mode $mode" && printUsage && exit(1);
    }
}
elsif ( $vector =~ m/readSpeed/ ) {
    open( RIF, " < $filelist" ) or die " Unable to read $filelist : $! \n ";
    my @files = <RIF>;
    close(RIF);
    my $numfiles = @files;

    if ( $mode =~ m/serial/i ) {
        for my $readfile (@files) {
            print "Reading from $readfile \n";
            &runReadBM($readfile);
        }
    }
    elsif ( $mode =~ m/parallel/i ) {
        foreach my $readfile (@files) {
            print "Reading from $readfile \n";
            threads->create( \&runReadBM, $readfile );
        }
        while ( threads->list ) {
            for my $joinable ( threads->list(threads::joinable) ) {
                $joinable->join;
            }
        }
    }
    else {
        print "Unknown mode $mode" && printUsage && exit(1);
    }
}
else {
    print "Unknown vector $vector" && printUsage && exit(1);
}
