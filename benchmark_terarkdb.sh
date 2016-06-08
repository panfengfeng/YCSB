#echo 3 > /proc/sys/vm/drop_caches
#bin/ycsb load mongodb -s -P workloads/workloadc > /datainssd/ycsbtest/benchmarktest/load_test_2
#echo 3 > /proc/sys/vm/drop_caches
#bin/ycsb run mongodb -s -P workloads/workloadc > /datainssd/ycsbtest/benchmarktest/run_test_2
#echo 3 > /proc/sys/vm/drop_caches

#echo 3 > /proc/sys/vm/drop_caches
#bin/ycsb load mongodb -s -P workloads/workloadc > /datainssd/ycsbtest/benchmarktest/load_wiredtiger_snappy_6_movies_uniform_workloadc_mem64g_1
#echo 3 > /proc/sys/vm/drop_caches
#bin/ycsb run mongodb -s -P workloads/workloadc > /datainssd/ycsbtest/benchmarktest/run_wiredtiger_snappy_6_movies_uniform_workloadc_mem64g_1
#echo 3 > /proc/sys/vm/drop_caches

#echo 3 > /proc/sys/vm/drop_caches
#bin/ycsb load mongodb -s -P workloads/workloadc > /datainssd/ycsbtest/benchmarktest/load_TerarkSegDB_movies_uniform_workloadc_iterator_op_mem64g_4
echo 3 > /proc/sys/vm/drop_caches
bin/ycsb run mongodb -s -P workloads/workloadc > /datainssd/ycsbtest/benchmarktest/run_TerarkSegDB_movies_uniform_workloadc_iterator_op_mem64g_5
echo 3 > /proc/sys/vm/drop_caches
