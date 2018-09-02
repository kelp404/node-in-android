#!/usr/bin/env bash
build-nodejs-for-android arm64 --api 21 -j3 -o ../node-android-21-arm64
build-nodejs-for-android x64 --api 21 -j3 -o ../node-android-21-x64
