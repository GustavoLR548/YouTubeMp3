#!/bin/bash

if [ "${DOWNLOAD_PATH_SCRIPT}" ]
then
    echo "Downloading .mp3 in ${DOWNLOAD_PATH_SCRIPT}"
else 
    DOWNLOAD_PATH_SCRIPT=$(pwd)
fi

url="${1}"
program="${2}"

if [ "${program}" = "-yt-dlp" ]; then 
    yt-dlp -f bestaudio --extract-audio --audio-format mp3 --prefer-ffmpeg "${url}" -o "${DOWNLOAD_PATH_SCRIPT}/%(title)s.%(ext)s"
else 
    youtube-dl -f bestaudio --extract-audio --audio-format mp3 --prefer-ffmpeg "${url}" -o "${DOWNLOAD_PATH_SCRIPT}/%(title)s.%(ext)s" 
fi
