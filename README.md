# phosh-renice

A hack to prioritse calls, phoc, phosh and squeekboard on startup. This is quite useful when the phone is coming out of deep sleep mode and is recieving a call as it sometimes takes upwards of 20 seconds for the phone to reload the Calls app.

## How to install

ssh into your PinePhone:

```
ssh mobian@ipaddr
```

Run the following:

```
$ git clone https://github.com/KeironO/phosh-renice
$ cd phosh-renice
$ sudo ./install.sh
```

To uninstall:
```
$ sudo ./uninstall.sh
```

