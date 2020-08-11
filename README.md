# phosh-renice

Have you ever missed a call on your PinePhone because it didn't wake up quick enough from deep sleep?

This little hack aims to resolve that by prioritising calls, NetworkManager, phoc, phosh and squeekboard on startup.

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

And you should be good to go :)

To uninstall, simply run:
```
$ sudo ./uninstall.sh
```

## Copyright and license

Code released under [the MIT license](https://github.com/KeironO/phosh-renice/blob/master/LICENSE).
