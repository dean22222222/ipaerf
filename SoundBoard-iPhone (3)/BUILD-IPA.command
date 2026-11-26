#!/bin/bash
# Double-click to build SoundBoard.ipa (needs Xcode installed and opened once)
cd "$(dirname "$0")/SoundBoard.swiftpm" || exit 1
echo "=== Building SoundBoard.ipa ==="
sudo -n true 2>/dev/null
rm -rf build
xcodebuild -scheme SoundBoard -configuration Release -destination 'generic/platform=iOS' \
  -derivedDataPath build CODE_SIGNING_ALLOWED=NO CODE_SIGNING_REQUIRED=NO CODE_SIGN_IDENTITY="" build
APP=$(find build/Build/Products -maxdepth 2 -name "*.app" | head -1)
if [ -n "$APP" ]; then
  rm -rf ../Payload; mkdir ../Payload; cp -R "$APP" ../Payload/
  (cd .. && zip -qr "$HOME/Desktop/SoundBoard.ipa" Payload && rm -rf Payload)
  echo ""; echo "DONE! SoundBoard.ipa is on your Desktop (unsigned)."
  echo "Install it with Sideloadly (sideloadly.io): it signs it with your Apple ID."
  open -R "$HOME/Desktop/SoundBoard.ipa"
else
  echo ""; echo "Build failed. Copy the red text above and send it to me."
fi
read -p "Press Enter to close..."
