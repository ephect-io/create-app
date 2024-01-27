#!/bin/sh

TARGET=$1;
CWD=$(pwd);
DOCROOT=$(head $CWD/config/document_root)

if [ -z "$TARGET" ];
then
    echo "Target is missing.";
    exit 1;
fi

if [ "$TARGET" = "all" ];
then

    rm -rf dist;
    echo "Building web components...";
    webpack --config webpack.config.js;

    cp dist/app.min.js $DOCROOT
    cp -rfv app/Assets/* $DOCROOT

    if [ ! -d "$DOCROOT/modules" ];
    then
        mkdir $DOCROOT/modules
    fi

    cp -rfv node_modules/human-writes/dist/web/human-writes.min.js $DOCROOT/modules

    php ./egg build

fi

exit 0;
