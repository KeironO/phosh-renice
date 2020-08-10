#!/bin/bash

PIDS = "$(pidof phoc) $(pidof phosh) $(pidof squeekboard) $(pidof calls) $(pidof ModemManager)"
renice -n -1 -p $PIDS

