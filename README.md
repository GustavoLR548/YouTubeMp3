# Download videos from YouTube and convert them to MP3

![escudo2](https://img.shields.io/badge/license-MIT-green)

This Shell script allows you to download videos(and even playlists) from YouTube, and convert them
to mp3. 

**Required: Youtube-dl, ffmpeg**

**Optional: [Yt-dlp](https://github.com/yt-dlp/yt-dlp)**

## How to use 

Run the script in the terminal using:

```
./download_mp3.sh {insert-video/playlist-url}
```

You can also set a variable in bash, so your videos will be download on a specific directory, in order
to use this feature, use the following command:

```
export DOWNLOAD_PATH_SCRIPT="insert/path/here"
```

After that, for every use of this script(in the current terminal), all the videos will be download to the 
specified path.

## Yt-dlp

If you want to download using yt-dlp, then use the same command as before, but adding -yt-dlp at the end
of the command.

Example:
```
./download_mp3.sh {insert-video/playlist-url} -yt-dlp 
``` 

### Credits

Special thanks for my friend, [Rafael Amauri](https://github.com/RafaelAmauri), who helped me with this project.
