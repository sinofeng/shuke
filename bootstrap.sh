#!/bin/bash
#
# Created by Yu Yang <yyangplus@NOSPAM.gmail.com> on 2017-10-09
#

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
RTE_TARGET="x86_64-native-linuxapp-gcc"
RTE_SDK=`ls -d $BASEDIR/3rd/dpdk-*`

build_dpdk() {
    if [ ! -d "$RTE_SDK/$RTE_TARGET" ]; then
        make -C $RTE_SDK install T=$RTE_TARGET
    fi
}

build_dpdk
make $*
