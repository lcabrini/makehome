#! /usr/bin/env sh

# Naive audio extractor.
# Author: Lorenzo Cabrini <lorenzo.cabrini@gmail.com>

if [ -z "`command -v ffprobe`" ]; then
    printf "You must have ffmpeg installed to use this." >&2
fi

for video_file in *; do
    video_bn=${video_file%.*}
    audio_ext=$(ffprobe "$video_file" 2>&1 | grep Audio | awk '{ print $4 }')
    audio_file=$(echo "$video_bn" | tr -c 'A-Za-z0-9_-' _ | tr A-Z a-z |
                     tr -s _ | sed -e 's/^_//' -e 's/_$//').$audio_ext
    ffmpeg -i "$video_file" -vn -acodec copy $audio_file
done
