# build-nodejs-for-android-perfectly
source: https://github.com/sjitech/build-nodejs-for-android

### host
```
git clone git@github.com:kelp404/node-in-android.git
cd node-in-android
cd android-build-tools
docker build . -t node-in-android
docker run -it --name nia -v $PWD/../:/root/node-in-android node-in-android
```

### docker
```
cd node-in-android
./android-build-tools/build.sh
```
