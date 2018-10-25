#!/bin/bash

nohup su - -c 'cd /grid/0/hadoopqe; python -m pytest --junitxml=/grid/0/log/cluster/hivellap_core_1/artifacts/junitresults.xml -s --gatherlogs=false  --durations=2000 --testRunName=hivellap_core_1 --output-dir=/grid/0/log/cluster/hivellap_core_1/artifacts --logServer=10.63.150.51 --testReportName=hiveserver2llap --testComponent=hive2 "/grid/0/hadoopqe/tests/hiveserver2/core"' hrt_qa &

:<<'COMMENT'
nohup su - -c 'cd /grid/0/hadoopqe; python -m pytest --junitxml=/grid/0/log/cluster/hivellap_core_2/artifacts/junitresults.xml -s --gatherlogs=false  --durations=2000 --testRunName=hivellap_core_2 --output-dir=/grid/0/log/cluster/hivellap_core_2/artifacts --logServer=10.63.150.51 --testReportName=hiveserver2llap --testComponent=hive2 "/grid/0/hadoopqe/tests/hiveserver2/tpcds"' hrt_qa &
 
nohup su - -c 'cd /grid/0/hadoopqe; python -m pytest --junitxml=/grid/0/log/cluster/hivellap_core_3/artifacts/junitresults.xml -s --gatherlogs=false  --durations=2000 --testRunName=hivellap_core_3 --output-dir=/grid/0/log/cluster/hivellap_core_3/artifacts --logServer=10.63.150.51 --testReportName=hiveserver2llap --testComponent=hive2 "/grid/0/hadoopqe/tests/hiveserver2/tpch"' hrt_qa &
 
nohup su - -c 'cd /grid/0/hadoopqe; python -m pytest --junitxml=/grid/0/log/cluster/hivellap_core_4/artifacts/junitresults.xml -s --gatherlogs=false  --durations=2000 --testRunName=hivellap_core_4 --output-dir=/grid/0/log/cluster/hivellap_core_4/artifacts --logServer=10.63.150.51 --testReportName=hiveserver2llap --testComponent=hive2 "/grid/0/hadoopqe/tests/hiveserver2/acid"' hrt_qa &
 
nohup su - -c 'cd /grid/0/hadoopqe; python -m pytest --junitxml=/grid/0/log/cluster/hivellap_core_5/artifacts/junitresults.xml -s --gatherlogs=false  --durations=2000 --testRunName=hivellap_core_5 --output-dir=/grid/0/log/cluster/hivellap_core_5/artifacts --logServer=10.63.150.51 --testReportName=hiveserver2llap --testComponent=hive2 "/grid/0/hadoopqe/tests/hiveserver2/misc/emptyBucket"' hrt_qa &
 
nohup su - -c 'cd /grid/0/hadoopqe; python -m pytest --junitxml=/grid/0/log/cluster/hivellap_core_6/artifacts/junitresults.xml -s --gatherlogs=false  --durations=2000 --testRunName=hivellap_core_6 --output-dir=/grid/0/log/cluster/hivellap_core_6/artifacts --logServer=10.63.150.51 --testReportName=hiveserver2llap --testComponent=hive2 "/grid/0/hadoopqe/tests/hiveserver2/misc/test_clearScratchDir.py"' hrt_qa &
 
nohup su - -c 'cd /grid/0/hadoopqe; python -m pytest --junitxml=/grid/0/log/cluster/hivellap_core_7/artifacts/junitresults.xml -s --gatherlogs=false  --durations=2000 --testRunName=hivellap_core_7 --output-dir=/grid/0/log/cluster/hivellap_core_7/artifacts --logServer=10.63.150.51 --testReportName=hiveserver2llap --testComponent=hive2 "/grid/0/hadoopqe/tests/hiveserver2/misc/test_informationschema.py"' hrt_qa &
 
nohup su - -c 'cd /grid/0/hadoopqe; python -m pytest --junitxml=/grid/0/log/cluster/hivellap_core_8/artifacts/junitresults.xml -s --gatherlogs=false  --durations=2000 --testRunName=hivellap_core_8 --output-dir=/grid/0/log/cluster/hivellap_core_8/artifacts --logServer=10.63.150.51 --testReportName=hiveserver2llap --testComponent=hive2 "/grid/0/hadoopqe/tests/hiveserver2/misc/test_nn_federation.py"' hrt_qa &
 
nohup su - -c 'cd /grid/0/hadoopqe; python -m pytest --junitxml=/grid/0/log/cluster/hivellap_core_9/artifacts/junitresults.xml -s --gatherlogs=false  --durations=2000 --testRunName=hivellap_core_9 --output-dir=/grid/0/log/cluster/hivellap_core_9/artifacts --logServer=10.63.150.51 --testReportName=hiveserver2llap --testComponent=hive2 "/grid/0/hadoopqe/tests/hiveserver2/misc/test_recursive_directories.py"' hrt_qa &
 
nohup su - -c 'cd /grid/0/hadoopqe; python -m pytest --junitxml=/grid/0/log/cluster/hivellap_core_10/artifacts/junitresults.xml -s --gatherlogs=false  --durations=2000 --testRunName=hivellap_core_10 --output-dir=/grid/0/log/cluster/hivellap_core_10/artifacts --logServer=10.63.150.51 --testReportName=hiveserver2llap --testComponent=hive2 "/grid/0/hadoopqe/tests/hiveserver2/misc/test_serialization_encoding.py"' hrt_qa &
 
nohup su - -c 'cd /grid/0/hadoopqe; python -m pytest --junitxml=/grid/0/log/cluster/hivellap_core_11/artifacts/junitresults.xml -s --gatherlogs=false  --durations=2000 --testRunName=hivellap_core_11 --output-dir=/grid/0/log/cluster/hivellap_core_11/artifacts --logServer=10.63.150.51 --testReportName=hiveserver2llap --testComponent=hive2 "/grid/0/hadoopqe/tests/hiveserver2/misc/test_storage_based_auth.py"' hrt_qa &
 
nohup su - -c 'cd /grid/0/hadoopqe; python -m pytest --junitxml=/grid/0/log/cluster/hivellap_core_12/artifacts/junitresults.xml -s --gatherlogs=false  --durations=2000 --testRunName=hivellap_core_12 --output-dir=/grid/0/log/cluster/hivellap_core_12/artifacts --logServer=10.63.150.51 --testReportName=hiveserver2llap --testComponent=hive2 "/grid/0/hadoopqe/tests/hiveserver2/misc/test_storageHandler.py"' hrt_qa &
 
nohup su - -c 'cd /grid/0/hadoopqe; python -m pytest --junitxml=/grid/0/log/cluster/hivellap_core_13/artifacts/junitresults.xml -s --gatherlogs=false  --durations=2000 --testRunName=hivellap_core_13 --output-dir=/grid/0/log/cluster/hivellap_core_13/artifacts --logServer=10.63.150.51 --testReportName=hiveserver2llap --testComponent=hive2 "/grid/0/hadoopqe/tests/hiveserver2/misc/test_temp_table_tez_session_reuse.py"' hrt_qa &
 
nohup su - -c 'cd /grid/0/hadoopqe; python -m pytest --junitxml=/grid/0/log/cluster/hivellap_core_14/artifacts/junitresults.xml -s --gatherlogs=false  --durations=2000 --testRunName=hivellap_core_14 --output-dir=/grid/0/log/cluster/hivellap_core_14/artifacts --logServer=10.63.150.51 --testReportName=hiveserver2llap --testComponent=hive2 "/grid/0/hadoopqe/tests/hiveserver2/misc/test_timestamp.py"' hrt_qa &
 
nohup su - -c 'cd /grid/0/hadoopqe; python -m pytest --junitxml=/grid/0/log/cluster/hivellap_core_15/artifacts/junitresults.xml -s --gatherlogs=false  --durations=2000 --testRunName=hivellap_core_15 --output-dir=/grid/0/log/cluster/hivellap_core_15/artifacts --logServer=10.63.150.51 --testReportName=hiveserver2llap --testComponent=hive2 "/grid/0/hadoopqe/tests/hiveserver2/workloadmanager/test_trigger.py::test_exceed_num_files"' hrt_qa &
COMMENT