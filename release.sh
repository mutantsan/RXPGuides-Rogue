#!/bin/sh
# Builds a clean release zip of the addon into build/:
#   build/RXPGuides_Rogue-<version>.zip
# The version comes from "## Version:" in RXPGuides_Rogue.toc.
# Leaves out .git, build/, macOS metadata (__MACOSX, ._*, .DS_Store) and this script.
set -eu

cd "$(dirname "$0")"
ADDON="$(basename "$PWD")"
VERSION="$(sed -n 's/^## Version:[[:space:]]*//p' "$ADDON.toc" | tr -d '\r')"
[ -n "$VERSION" ] || { echo "No '## Version:' found in $ADDON.toc" >&2; exit 1; }

mkdir -p build
OUT="$PWD/build/$ADDON-$VERSION.zip"
rm -f "$OUT"

# Zip from the parent folder so the archive keeps the top-level RXPGuides_Rogue/ folder.
cd ..
COPYFILE_DISABLE=1 zip -r -X -q "$OUT" "$ADDON" \
    -x "$ADDON/.git" "$ADDON/.git/*" "$ADDON/.gitignore" \
       "$ADDON/build" "$ADDON/build/*" \
       "*/.DS_Store" "*/._*" "__MACOSX/*" \
       "$ADDON/release.sh"

echo "Built $OUT"
unzip -l "$OUT"
