#!/bin/bash

sudo renice -n -1 -p $(pidof calls)
sudo renice -n -1 -p $(pidof phoc)
sudo renice -n -1 -p $(pidof phosh)
sudo renice -n -1 -p $(pidof squeekboard)
