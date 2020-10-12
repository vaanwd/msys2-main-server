#!/bin/bash

mirrorbits add -http=https://mirror.yandex.ru/mirrors/msys2/ -rsync=rsync://mirror.yandex.ru/mirrors/msys2/ -score 1000 yandex.ru
mirrorbits enable yandex.ru

mirrorbits add -http=https://mirror.selfnet.de/msys2/ -rsync=rsync://mirror.selfnet.de/msys2/ -score 1000 selfnet.de
mirrorbits enable selfnet.de

mirrorbits add -http=https://mirrors.tuna.tsinghua.edu.cn/msys2/ -rsync=rsync://mirror.selfnet.de/msys2/ -score 1000 tsinghua.edu.cn
mirrorbits enable tsinghua.edu.cn

mirrorbits add -http=https://ftp.acc.umu.se/mirror/msys2.org/ -rsync=rsync://ftp.acc.umu.se/mirror/msys2.org/ -score 1000 umu.se
mirrorbits enable umu.se

mirrorbits add -http=https://quantum-mirror.hu/mirrors/pub/msys2/ -rsync=rsync://quantum-mirror.hu/msys2/ -score 1000 quantum-mirror.hu
mirrorbits enable quantum-mirror.hu

mirrorbits add -http=https://mirrors.dotsrc.org/msys2/ -rsync=rsync://mirrors.dotsrc.org/msys2/ -score 1000 dotsrc.org
mirrorbits enable dotsrc.org

mirrorbits add -http=https://ftp.cc.uoc.gr/mirrors/msys2/ -ftp=ftp://ftp.cc.uoc.gr/mirrors/msys2/ -score 1000 uoc.gr
mirrorbits enable uoc.gr
