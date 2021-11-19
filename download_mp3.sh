#!/bin/bash

if [ "${DOWNLOAD_PATH_SCRIPT}" ]
then
    echo "Downloading .mp3 in ${DOWNLOAD_PATH_SCRIPT}"
else 
    DOWNLOAD_PATH_SCRIPT=$(pwd)
fi

url="${1}"

youtube-dl --extract-audio --audio-format mp3 --prefer-ffmpeg "${url}" -o "${DOWNLOAD_PATH_SCRIPT}/%(title)s.%(ext)s" 
