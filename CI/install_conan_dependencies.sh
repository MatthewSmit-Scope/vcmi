#!/usr/bin/env bash
set -x

RELEASE_TAG="2026-03-11"
FILENAME="$1.txz"
DOWNLOAD_URL="https://github.com/vcmi/vcmi-dependencies/releases/download/$RELEASE_TAG/$FILENAME"

gh run download 25542804987 \
            --repo vcmi/vcmi-dependencies \
            --dir "$RUNNER_TEMP" \
            --name "dependencies-android-arm64-v8a"
#downloadedFile="$RUNNER_TEMP/1.zip"
#curl -Lo "$downloadedFile" "https://github.com/vcmi/vcmi-dependencies/actions/runs/25542804987/artifacts/6874653030" -H "Authorization: Bearer $2"
cd "$RUNNER_TEMP"
#ls -l
#unzip -q *.zip
conan cache restore *.txz
