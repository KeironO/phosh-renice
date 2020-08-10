#!/bin/bash

PIDS = "$(pidof phoc) $(pidof phosh) $(pidof squeekboard) $(pidof calls)"
renice -n -1 -p $PIDS

