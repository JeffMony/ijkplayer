#! /usr/bin/env bash

export PROJECT_PATH=$(pwd)

echo ${PROJECT_PATH}

cd android/contrib/

# compile openssl
# ./compile-openssl.sh clean
# ./compile-openssl.sh armv5
# ./compile-openssl.sh armv7a
# ./compile-openssl.sh arm64

# compile ffmpeg
# ./compile-ffmpeg.sh clean
# ./compile-ffmpeg.sh armv5
# ./compile-ffmpeg.sh armv7a
# ./compile-ffmpeg.sh arm64

cd ..

# compile ijkplayer
./compile-ijk.sh clean
./compile-ijk.sh armv5
./compile-ijk.sh armv7a 
./compile-ijk.sh arm64

cd ..
rm -rf jeffmony_files/*
cp -rf ${PROJECT_PATH}/android/ijkplayer/ijkplayer-armv5/src/main/libs/ ./jeffmony_files/
cp -rf ${PROJECT_PATH}/android/ijkplayer/ijkplayer-armv7a/src/main/libs/ ./jeffmony_files/
cp -rf ${PROJECT_PATH}/android/ijkplayer/ijkplayer-arm64/src/main/libs/ ./jeffmony_files/
