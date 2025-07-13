bun run build &&
bunx cap sync android &&
cd android/ &&
#./gradlew clean &&
#./gradlew assembleRelease &&
./gradlew assembleDebug &&
cd .. &&
read -p "Enter your message commit: " message_commit &&
git add . &&
git commit -am "$message_commit" &&
git push &&
echo "Build and commit successful!" ||
echo "Build or commit failed. Please check the output for errors."
# This script builds the Android app, commits changes, and pushes to the repository.
# It uses `bun` for building and `git` for version control.