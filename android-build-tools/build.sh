#!/usr/bin/env bash
build-nodejs-for-android arm64 --api 22 -j3 -o ../node-android-22-arm64
build-nodejs-for-android x64 --api 22 -j3 -o ../node-android-22-x64
