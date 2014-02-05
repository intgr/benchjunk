#!/bin/sh
for f in *.sql; do
    echo -n "$f "
    #pgbench -n -T 3 -f $f |grep ^latency
    pgbench -n -T 3 regression -f $f |grep 'excluding connections'
done
