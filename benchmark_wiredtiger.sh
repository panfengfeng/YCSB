nohup dstat -tcm --output /datainssd/ycsbtest/cpumemory/wiredtiger_snappy_6_movies_uniform_workloadc_mem4g_new_1_thread_8_2 2 > nohup.out &
#
#echo 3 > /proc/sys/vm/drop_caches
#
#bin/ycsb load mongodb -s -P workloads/workloadc > /datainssd/ycsbtest/benchmarktest/load_wiredtiger_snappy_6_movies_uniform_workloadc_mem64g_new_1
#
#echo 3 > /proc/sys/vm/drop_caches

echo 3 > /proc/sys/vm/drop_caches
bin/ycsb run mongodb -s -P workloads/workloadc -threads 8 > /datainssd/ycsbtest/benchmarktest/run_wiredtiger_snappy_6_movies_uniform_workloadc_mem4g_new_1_thread_8_2
echo 3 > /proc/sys/vm/drop_caches

dstatpid=`ps aux | grep dstat | awk '{if($0 !~ "grep"){print $2}}'`
for i in $dstatpid
do
        kill -9 $i
done
