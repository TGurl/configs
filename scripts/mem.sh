#!/bin/sh
doas sh -c "sync; echo 1 > /proc/sys/vm/drop_caches"

