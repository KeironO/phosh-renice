# phosh-renice

A hack to prioritse calls, phoc, phosh and squeekboard on startup.

## How to install

ssh into your PinePhone:

```
ssh mobian@ipaddr
```

Run the following:

```
$ git clone https://github.com/KeironO/phosh-renice
$ cd phosh-renice
$ mkdir ~/.local/bin
$ cp phosh_renice.sh ~/.local/bin
$ sudo cp phosh_renice.service /etc/systemd/system/
$ sudo systemctl start phosh_renice
$ sudo systemctl enable phosh_renice
```


