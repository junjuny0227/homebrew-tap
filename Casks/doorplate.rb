cask "doorplate" do
  version "0.1.0"
  sha256 "dd91fe38047aca2105824f66c285e90c52a10797cde10ea6c5f48ee9c9a2e7c3"

  url "https://github.com/junjuny0227/Doorplate/releases/download/v#{version}/Doorplate-#{version}.zip"
  name "Doorplate"
  desc "Menu bar app that shows which project owns each local port"
  homepage "https://github.com/junjuny0227/Doorplate"

  auto_updates true
  depends_on macos: :sonoma

  app "Doorplate.app"

  zap trash: "~/Library/Preferences/io.github.junjuny0227.doorplate.plist"

  caveats <<~EOS
    Open Doorplate from /Applications. If you move it, move it before the first open:
    an app first opened from another folder cannot update itself.
    Doorplate is not notarized. The first time you open it, macOS blocks it.
    Open System Settings > Privacy & Security and click "Open Anyway".
    Or remove the download quarantine flag in Terminal:
      xattr -dr com.apple.quarantine /Applications/Doorplate.app
  EOS
end
