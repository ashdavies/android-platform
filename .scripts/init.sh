echo "y" | repo init -u https://android.googlesource.com/platform/manifest
repo sync --current-branch --optimized-fetch --quiet --jobs=4

gpg --import google.asc
git tag -v $(git describe --abbrev=0 --tags)
