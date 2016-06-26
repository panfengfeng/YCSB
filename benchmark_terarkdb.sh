nohup dstat -tcm --output /datainssd/ycsbtest/cpumemory/TerarkSegDB_movies_uniform_workloadc_iterator_op_mem3g_new_1_1read_thread_1_96_2 2 > nohup.out &
#
#echo 3 > /proc/sys/vm/drop_caches
#
#bin/ycsb load mongodb -s -P workloads/workloadc > /datainssd/ycsbtest/benchmarktest/load_TerarkSegDB_movies_uniform_workloadc_iterator_op_mem3g_new_1
#
#echo 3 > /proc/sys/vm/drop_caches

echo 3 > /proc/sys/vm/drop_caches

bin/ycsb run mongodb -s -P workloads/workloadc -threads 1 > /datainssd/ycsbtest/benchmarktest/run_TerarkSegDB_movies_uniform_workloadc_iterator_op_mem3g_new_1_1read_thread_1_96_2

#bin/ycsb run mongodb -s -P workloads/workloadc -threads 1 > /datainssd/ycsbtest/benchmarktest/run_TerarkSegDB_movies_test

echo 3 > /proc/sys/vm/drop_caches

dstatpid=`ps aux | grep dstat | awk '{if($0 !~ "grep"){print $2}}'`
for i in $dstatpid
do
        kill -9 $i
done
