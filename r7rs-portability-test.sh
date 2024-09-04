#!/bin/bash

function run () {
    echo "=========================="
    echo "Running with ${1}"
    echo "=========================="
    docker run -v ${PWD}:/workdir schemers/${1} bash -c "cd workdir && ${2} r7rs-portability-test.scm"
}

if [ ! "${1}" = "" -a ! "${2}" = "" ];
then
    run ${1} ${2}
else
    run chibi chibi-scheme
    run chicken "csi -R r7rs"
    run cyclone "icyc -s"
    run gambit gsi
    run gerbil gxi
    run gauche gosh
    run guile guile
    run kawa kawa
    run loko "loko -std=r7rs --script"
    run mit-scheme "mit-scheme --load"
    run racket "racket -I r7rs --script"
    run sagittarius sash
    run stklos stklos
    run skint skint
    run tr7 tr7i
fi
