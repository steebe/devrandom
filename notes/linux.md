# All hail

## Users & Groups

### Adding a root user

```shell
$ sudo vi /etc/sudoers
# add: <user> ALL=(ALL) ALL
```

## apt-get

### Sources

The /etc/apt/sources.list file specifies which repositories to check for specific updates. An example can be seen [here](https://gist.github.com/gustavorv86/d60a25ad5f70b0dfc382670d3dc6da8d):

```
deb http://deb.debian.org/debian bullseye main contrib non-free
deb-src http://deb.debian.org/debian bullseye main contrib non-free

deb http://deb.debian.org/debian-security/ bullseye-security main contrib non-free
deb-src http://deb.debian.org/debian-security/ bullseye-security main contrib non-free

deb http://deb.debian.org/debian bullseye-updates main contrib non-free
deb-src http://deb.debian.org/debian bullseye-updates main contrib non-free

deb http://deb.debian.org/debian bullseye-proposed-updates main contrib non-free
deb-src http://deb.debian.org/debian bullseye-proposed-updates main contrib non-free

deb http://deb.debian.org/debian bullseye-backports main contrib non-free
deb-src http://deb.debian.org/debian bullseye-backports main contrib non-free

deb http://deb.debian.org/debian bullseye-backports-sloppy main contrib non-free
deb-src http://deb.debian.org/debian bullseye-backports-sloppy main contrib non-free
```
