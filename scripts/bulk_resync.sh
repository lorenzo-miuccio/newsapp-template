
source ./config.sh

cd "$rootDir"

# Sequential syncing project's packages
for dir in "${packages[@]}"; do
  echo "Removing lock files in $dir"
  rm -f pubspec.lock
  rm -rf "$dir/.dart_tool"
  rm -rf "$dir/build"
  flutter pub get "$dir";
done

cd "$scriptsDir"