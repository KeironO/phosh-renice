#!/bin/sh

until PIDS="$(pidof phoc) $(pidof phosh) $(pidof squeekboard) $(pidof calls) $(pidof ModemManager)"
do
	sleep 1
done

renice -n -1 -p $PIDS
