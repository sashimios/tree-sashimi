#!/bin/bash

function src_unpack() {
    log_info "Entering 'src_unpack'"
    cd "$MASTER_DIR/work"
    tar -pxvf "$MASTER_DIR/fetch/bash-${VER%.*}.tar.gz"
}

function real_build() {
    log_info "Entering 'real_build'"
    cd "$MASTER_DIR/work"
    cd "bash-${VER%.*}"
    ./configure $AUTOTOOLS_AFTER
    make all
    make install DESTDIR="$MASTER_DIR/output"
}

function start_building() {
    src_unpack
    real_build
}


