#!/bin/bash



./configure   --prefix="$HOME/ffmpeg_build"   --pkg-config-flags="--static"   --extra-cflags="-I$HOME/ffmpeg_build/include"   --extra-ldflags="-L$HOME/ffmpeg_build/lib"   --extra-libs="-lpthread -lm"   --bindir="$HOME/bin"   --enable-gpl   --enable-libass   --enable-libfdk-aac   --enable-libfreetype   --enable-libmp3lame  --enable-libx264  --enable-nonfree && PATH="$HOME/bin:$PATH" make -j 8 && make install && hash -r


# --enable-libx265 not include as there is a bug in my current ubuntu package preventing builing with ffmpeg
