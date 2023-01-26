
source ./config.sh

cd "$rootDir"

for dir in "${packages[@]}"; do
  cd "$dir"
  flutter pub run build_runner build --delete-conflicting-outputs
  cd "$rootDir"
done

cd "$scriptsDir"