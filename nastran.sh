#!/bin/bash
# based on https://github.com/ldallolio/NASTRAN-95/blob/master/bin/nastran.sh

#nasthome=$(dirname $(dirname $(readlink -f $0)))
nasthome=$(dirname $(readlink -f $0))

# TEST ARGUMENT

if [ $# == "0" ]; then
    echo "you must pass an argument"
    exit 1
elif [ $# != "1" ]; then
    echo "you must pass an unique argument"
    exit 2
fi

if [ ! -f "$1" ]; then
    echo "passed argument must be a file"
    exit 3
fi

# ENV VARIABLES

export RFDIR=$nasthome/rf
export DIRCTY="${TMPDIR:-/tmp}"

export FT05=$1

export FT06=$1.out
export NPTPNM=$1.nptp
export PLTNM=$1.plt2
export PUNCHNM=$1.pnh
export OUT11=$1.out11
export IN12=$1.plt
export LOGNM=$1.log

if [ -z "$SOF1" ]; then
    export SOF1=$1.sof1
fi 
export SOF2=$1.sof2
export DICTNM="none"
export FTN11="none"
export FTN12="none"
export FTN13="none"
export FTN14="none"
export FTN15=$1.out15
export FTN16="none"
export FTN17="none"
export FTN18="none"
export FTN19="none"
export FTN20="none"
export FTN21="none"
export FTN22="none"
export FTN23="none"
export DBMEM="14000000"
export OCMEM="14000000"
export PROJ="."
# RUN NASTRAN

#$nasthome/mds/nastran
#gdb $nasthome/mds/nastran
$nasthome/bin/nastran.x

