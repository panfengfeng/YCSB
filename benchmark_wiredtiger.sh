nohup dstat -tcm --output /datainssd/ycsbtest/cpumemory/wiredtiger_none_6_movies_uniform_mem3g_new_1_thread_16_workloadc_1 2 > nohup.out &

#echo 3 > /proc/sys/vm/drop_caches

#bin/ycsb load mongodb -s -P workloads/workloadd > /datainssd/ycsbtest/benchmarktest/load_wiredtiger_snappy_6_movies_uniform_workloadc_mem3g_new_1
#bin/ycsb load mongodb -s -P workloads/workloadd > /datainssd/ycsbtest/benchmarktest/load_wiredtiger_test
#bin/ycsb load mongodb -s -P workloads/workloadc > /datainssd/ycsbtest/benchmarktest/load_wiredtiger_test

#echo 3 > /proc/sys/vm/drop_caches

echo 3 > /proc/sys/vm/drop_caches

bin/ycsb run mongodb -s -P workloads/workloadc -threads 16 > /datainssd/ycsbtest/benchmarktest/run_wiredtiger_none_6_movies_uniform_mem3g_new_1_thread_16_workloadc_1

#bin/ycsb run mongodb -s -P workloads/workloadc -threads 1 > /datainssd/ycsbtest/benchmarktest/run_wiredtiger_test

echo 3 > /proc/sys/vm/drop_caches

dstatpid=`ps aux | grep dstat | awk '{if($0 !~ "grep"){print $2}}'`
for i in $dstatpid
do
        kill -9 $i
done
