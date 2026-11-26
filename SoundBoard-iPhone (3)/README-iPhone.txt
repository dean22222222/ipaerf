SOUND BOARD FOR IPHONE
1. On your Mac install Xcode (free, App Store). Open it once and let it finish setup.
2. Double-click SoundBoard.swiftpm (it opens in Xcode).
3. Click the app name at the top > Signing: choose your Apple ID as the Team
   (Xcode > Settings > Accounts > + to add it; a free Apple ID is fine).
4. Plug in your iPhone, turn on Settings > Privacy & Security > Developer Mode,
   pick your iPhone at the top of Xcode, then press the Play button.
5. On the iPhone: Settings > General > VPN & Device Management > trust your Apple ID.
A free Apple ID app expires after 7 days; just press Play again to refresh it.

MAKE AN .IPA FILE
Double-click BUILD-IPA.command (right-click > Open if blocked). SoundBoard.ipa appears on your Desktop.
It is unsigned: install it with Sideloadly (sideloadly.io) using your Apple ID.

BUILD ONLINE (no Xcode)
1. Free account at github.com, create a PUBLIC repository (macOS builds are free for public repos).
2. Upload everything in this folder, including the hidden .github folder.
3. Actions tab > "Build IPA" > wait ~5 min > download "SoundBoard-ipa" > unzip > SoundBoard.ipa
4. Sign and install it with Sideloadly (sideloadly.io) using your Apple ID.
