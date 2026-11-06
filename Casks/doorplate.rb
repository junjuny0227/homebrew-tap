cask "doorplate" do
  version "0.2.2"
  sha256 "fb28d098cacbddac956a5e9f550c5d54c2ba56654648bcc91c81350e7917c455"

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
