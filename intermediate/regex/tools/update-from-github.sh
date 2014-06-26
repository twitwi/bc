#!/bin/bash

URL=https://github.com/twitwi/regexpal.git
BRANCH=software-carpentry
LOG=./tmp.log
TMP=$(tempfile)

(echo "RUNNING $0" ; date ; echo) >> "$LOG"

rm "$TMP"
git clone "$URL" "$TMP" -b $BRANCH
ls -l "$TMP"/* >> "$LOG"
cp -r "$TMP"/* regexpal/

# save some info on the copied version
SHA=$(cd "$TMP" && git rev-parse --verify HEAD)
echo "$SHA" > regexpal/.sha1

(echo "SHA1 of regexpal is $SHA" ; date ; echo "... DONE") >> "$LOG"
