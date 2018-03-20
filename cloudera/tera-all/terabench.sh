#!/bin/sh
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




printUsage() {
    echo "Usage: $0 -p <teragen|terasort|teravalidate|all> -x <replication_level> -m <map tasks> -M <map memory> -r <reduce tasks> -R <reduce memory> -d <data size> -s <shuffle type> \
-B <128|256|512|1024> -i <input dir> -o <output dir> -O <report dir> |-h 
		-v - benchmark with MR1 or MR2 code, our default is 2
		-p - teragen, terasort, teravalidate or all 
		-i - input directory in HDFS
		-o - output directory in HDFS
		-O - report directory in HDFS (for teravalidate)
		-x - replication factor, default is 3 
		-m - number of map tasks, our default is 100 
		-M - map task memory size
		-r - number of reduce tasks, our default is 25 
		-R - reduce task memory size
		-d - Data size in number of 100byte rows, our default is 1000000000 
		-s - shuffle type. Allowed options are regular or uda, default is regular 
		-B - DFS block size. Allowed options (128|256|512|1024), default is 128 MB
		-h - print this message 
eg: $0 -v 2 -p terasort -x 2 -m 200 -r 300 -d 100000000 -s regular -i terasort_in -o terasort_out
eg: $0 -v 2 -p teragen -x 3 -m 200 -r 300 -d 100000000 -s regular -i terasort_in -B 512 -o terasort_out";
}



# main

while getopts v:p:x:m:M:r:R:d:s:i:o:O:B:h switch
do
    case $switch in 
  	v) version=$OPTARG;;
	p) phase=$OPTARG;;
	x) replication=$OPTARG;;
	m) map_tasks=$OPTARG;;
	M) map_mem=$OPTARG;;
	r) reduce_tasks=$OPTARG;;
        R) reduce_mem=$OPTARG;;
        d) data_size=$OPTARG;;
	s) shuffle=$OPTARG;;
	i) input=$OPTARG;;
	o) output=$OPTARG;;
	O) report=$OPTARG;;
	B) blocksize=$OPTARG;;
	h) printUsage && exit 0;;
      	*) echo "Unknown option" && exit 1;;
    esac
done
shift $(( $OPTIND - 1 ))

if [ $OPTIND -le 1 ]; then
    printUsage && exit 1;
fi

if [ -z $version ]; then
    version=2;
fi

if [ -z $phase ]; then
   phase="all";
fi

if [ -z $blocksize ]; then
   blocksize=134217728
fi

if [ -z $input ]; then
    input=ts_in
fi
if [ -z $output ]; then
    output=ts_out
fi
if [ -z $report ]; then
    report=tv_out
fi
if [ -z $replication ]; then
    replication=3
fi
if [ -z $map_tasks ]; then
    map_tasks=100
fi
if [ -z $reduce_tasks ]; then
    reduce_tasks=25
fi
if [ -z $map_mem ]; then
     map_mem=1024
fi
if [ -z $reduce_mem ]; then
    reduce_mem=1024
fi
if [ -z $shuffle ]; then
    shuffle="regular";
fi
if [ -z $data_size ]; then
    data_size=1000000000
fi

case $version in
	'1') mapreduce_jar=/opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar;;
	'2') mapreduce_jar=/opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar;;
	*) echo "Unknown version $version - only accept <1|2>" && exit 1;;
esac

hadoop_bin=/usr/bin/hadoop
hdfs_bin=/usr/bin/hdfs

case $shuffle in
	'regular') shuffle_algo=org.apache.hadoop.mapreduce.task.reduce.Shuffle;;
	'uda') shuffle_algo=com.mellanox.hadoop.mapred.UdaShuffleConsumerPlugin;;
	*) echo "Unknown shuffle type option - only accept <regular|uda>" && exit 1;;
esac

blkdefault=134217728
case $blocksize in
	'128') dfsblock=$blkdefault;;
	'256') dfsblock=268435456;;
	'512') dfsblock=536870912;;
	'1024') dfsblock=1073741824;;
	*) echo "unknown block size, using default $blkdefault" && dfsblock=$blkdefault;;
esac

printMesg() {
     case $1 in 
	 '1') mesg="$hdfs_bin dfs -rm -r -skipTrash $input";;
	 '2') mesg="$hadoop_bin jar $mapreduce_jar teragen -Ddfs.replication=$replication \
-Ddfs.client.block.write.locateFollowingBlock.retries=15 -Dyarn.app.mapreduce.am.job.cbd-mode.enable=false \
-Ddfs.blocksize=$dfsblock \
-Dyarn.app.mapreduce.am.job.map.pushdown=false -Dmapreduce.job.maps=$map_tasks -Dmapreduce.map.memory.mb=$map_mem $data_size $input";;
	 '3') mesg="$hdfs_bin dfs -rm -r -skipTrash $output";;
	'4') mesg="$hadoop_bin jar  $mapreduce_jar terasort  \
-Dmapreduce.job.reduce.shuffle.consumer.plugin.class=$shuffle_algo \
-Ddfs.client.block_write.locateFollowingBlock.retries=30 \
-Dmapred.reduce.child.log.level=WARN -Ddfs.replication=$replication \
-Ddfs.blocksize=$dfsblock \
-Dyarn.app.mapreduce.am.job.cbd-mode.enable=false -Dyarn.app.mapreduce.am.job.map.pushdown=false \
-Dmapreduce.job.maps=$map_tasks -Dmapreduce.job.reduces=$reduce_tasks -Dmapreduce.reduce.memory.mb=$reduce_mem $input $output";;
	 '5') mesg="$hdfs_bin dfs -rm -r -skipTrash $report";;
	 '6') mesg="$hadoop_bin jar $mapreduce_jar teravalidate -Ddfs.replication=$replication \
-Ddfs.client.block.write.locateFollowingBlock.retries=15 -Dyarn.app.mapreduce.am.job.cbd-mode.enable=false \
-Ddfs.blocksize=$dfsblock \
-Dyarn.app.mapreduce.am.job.map.pushdown=false -Dmapreduce.job.maps=$map_tasks -Dmapreduce.map.memory.mb=$map_mem $output $report";;
	*) echo "Unknown option" && exit 1;;
    esac
    echo "$mesg";
}

teraGenIt() {
# Run the teragen
    printMesg 1;
    $hdfs_bin dfs -rm -r -skipTrash $input;
    sleep 30;
    printMesg 2;
    $hadoop_bin jar $mapreduce_jar teragen -Ddfs.replication=$replication \
-Ddfs.client.block.write.locateFollowingBlock.retries=15 -Dyarn.app.mapreduce.am.job.cbd-mode.enable=false \
-Ddfs.blocksize=$dfsblock \
-Dyarn.app.mapreduce.am.job.map.pushdown=false -Dmapreduce.job.maps=$map_tasks -Dmapreduce.map.memory.mb=$map_mem $data_size $input
}

teraValidateIt() {
# Run the teravalidate
    printMesg 5;
    $hdfs_bin dfs -rm -r -skipTrash $report;
    sleep 30;
    printMesg 6;
    $hadoop_bin jar $mapreduce_jar teravalidate -Ddfs.replication=$replication \
-Ddfs.client.block.write.locateFollowingBlock.retries=15 -Dyarn.app.mapreduce.am.job.cbd-mode.enable=false \
-Ddfs.blocksize=$dfsblock \
-Dyarn.app.mapreduce.am.job.map.pushdown=false -Dmapreduce.job.maps=$map_tasks -Dmapreduce.map.memory.mb=$map_mem $output $report
}

teraSortIt() {
# run the terasort
   printMesg 3;
   $hdfs_bin dfs -rm -r -skipTrash $output;
    sleep 30;
   printMesg 4;
   $hadoop_bin jar  $mapreduce_jar terasort  \
-Dmapreduce.job.reduce.shuffle.consumer.plugin.class=$shuffle_algo \
-Ddfs.client.block_write.locateFollowingBlock.retries=30 \
-Dmapred.reduce.child.log.level=WARN -Ddfs.replication=$replication \
-Dyarn.app.mapreduce.am.job.cbd-mode.enable=false -Dyarn.app.mapreduce.am.job.map.pushdown=false \
-Ddfs.blocksize=$dfsblock \
-Dmapreduce.job.maps=$map_tasks -Dmapreduce.map.memory.mb=$map_mem -Dmapreduce.job.reduces=$reduce_tasks -Dmapreduce.reduce.memory.mb=$reduce_mem $input $output
}

# Main

case $phase in
	'teragen') teraGenIt;;
	'terasort') teraSortIt;;
	'teravalidate') teraValidateIt;;
	'all') teraGenIt && teraSortIt && teraValidateIt;;
	*) echo "Unknown phase - $phase"; printUsage && exit 1;;
esac
