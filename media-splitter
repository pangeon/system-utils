#!/bin/bash
SRC="$1"
DST="$2"
LOG="info.log"

VIDEO_EXT="*.3gp -o -iname *.mts -o -iname *.mp4 -o -iname *.mov -o -iname *.avi -o -iname *.mkv -o -iname *.vob -o -iname *.wmv -o -iname *.flv -o -iname *.m2ts -o -iname *.mpeg -o -iname *.mpg -o -iname *.webm -o -iname *.ts"

echo "===== $(date) =====" >> "$LOG"

find "$SRC" -type f -iregex '.*\.\(3gp\|mts\|vob\|mp4\|mov\|avi\|mkv\|wmv\|flv\|m2ts\|mpeg\|mpg\|webm\|ts\)$' | while read -r file; do
    dir=$(dirname "$file")
    relpath=${dir#"$SRC"/}
    target="$DST/$relpath"

    mkdir -p "$target"

    echo "Move catalog: $dir -> $target" | tee -a "$LOG"

    find "$dir" -maxdepth 1 -type f \
      \( -iname "*.3gp" -o -iname "*.mts" -o -iname "*.vob" -o -iname "*.mp4" -o -iname "*.mov" -o -iname "*.avi" -o -iname "*.mkv" -o -iname "*.wmv" -o -iname "*.flv" -o -iname "*.m2ts" -o -iname "*.mpeg" -o -iname "*.mpg" -o -iname "*.webm" -o -iname "*.ts" \) \
      -exec mv -n "{}" "$target/" \; -exec echo "→ moved: {}" \; | tee -a "$LOG"
done

echo "Finish $(date)" | tee -a "$LOG"