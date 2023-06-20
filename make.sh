#!/bin/bash

case $1 in
    install)
        sudo rsync -av --delete --mkpath tree/ /var/db/spm-repo/sashimi-test/tree/
        ;;
esac
