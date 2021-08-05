# IonFS Homebrew

## How do I install this cask?

`brew install ionburstcloud/ionfs/ionfs`

Or `brew tap ionburstcloud/ionfs` and then `brew install ionfs`.

A build from the IonFS `develop` branch is available using `brew install ionburstcloud/ionfs/ionfs-develop`

## M1 Macs

The IonFS `develop` branch is currently setup to provide a native arm64 build of `ionfs` for M1 Macs. To use this build, the following steps must be followed to allow the binary to execute:

```sh
hello@ionfs-example ~ % # install the ionfs develop cask
hello@ionfs-example ~ % brew install ionfs-develop
==> Downloading https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-0.2.5-develop.1-mac-arm64.tar.bz2
######################################################################## 100.0%
==> Installing Cask ionfs-develop
==> Linking Binary 'ionfs' to '/opt/homebrew/bin/ionfs'
🍺  ionfs-develop was successfully installed!
hello@ionfs-example ~ % # verify the binary location
hello@ionfs-example ~ % which ionfs
/opt/homebrew/bin/ionfs
hello@ionfs-example ~ % # generate an ad-hoc signature for the binary
hello@ionfs-example ~ % codesign --force -s - /opt/homebrew/bin/ionfs
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
