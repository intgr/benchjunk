#!/bin/sh
for f in join5.sql star5.sql line5.sql lim_join5.sql lim_star5.sql lim_line5.sql limord_join5.sql limord_star5.sql limord_line5.sql ; do
    for i in 1 2 3; do
        echo -n "$f "
        pgbench -n -T 3 regression -f $f |grep 'excluding connections'
    done
done
