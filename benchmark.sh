echo 3 > /proc/sys/vm/drop_caches
bin/ycsb load mongodb -s -P workloads/workloadc > benchmarktest/load_test
echo 3 > /proc/sys/vm/drop_caches
bin/ycsb run mongodb -s -P workloads/workloadc > benchmarktest/run_test
echo 3 > /proc/sys/vm/drop_caches
