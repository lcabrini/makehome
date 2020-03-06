#! /usr/bin/env zsh

# Naive audio extractor.
# Author: Lorenzo Cabrini <lorenzo.cabrini@gmail.com>

if [[ -z $(whence ffprobe) ]]; then
    print "You must have ffmpeg installed to use this." >&2
fi

for f in *; do
    ext=$(ffprobe $f 2>&1 | grep Audio | awk '{ print $4 }')
    out=$(print ${f:r} | tr -c 'A-Za-z0-9_-' _).$ext
    ffmpeg -i $f -vn -acodec copy $out
done
