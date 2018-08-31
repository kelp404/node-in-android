#!/usr/bin/env bash
build-nodejs-for-android arm --api 21 -j3 -o ../node-android-arm --full
build-nodejs-for-android arm64 --api 21 -j3 -o ../node-android-arm64 --full
build-nodejs-for-android x64 --api 21 -j3 -o ../node-android-x64 --full
