cask "sleepless" do
  version "1.2.6"
  sha256 "8a3f83fe6e3c92eccc8d1cf9a9571721a34a9ba39baa0b3dd61a90a386162023"

  url "https://github.com/Aboudjem/Sleepless/releases/download/v#{version}/Sleepless-#{version}.zip"
  name "Sleepless"
  desc "Stay awake with the lid closed, on battery, with no external display"
  homepage "https://github.com/Aboudjem/Sleepless"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Sleepless.app"

  uninstall quit: "com.aboudjem.Sleepless"

  zap trash: [
    "~/Library/LaunchAgents/com.aboudjem.Sleepless.plist",
    "~/Library/Preferences/com.aboudjem.Sleepless.plist",
  ]

  caveats <<~EOS
    Sleepless is ad-hoc signed (not notarized). Approve the first launch in
    System Settings then Privacy & Security then "Open Anyway".

    To let it toggle lid-close sleep without a password prompt, run once:
      #{appdir}/Sleepless.app/Contents/Resources/grant.sh

    "brew uninstall" cannot remove the passwordless sudoers grant (it is root-owned).
    To remove the grant too, run:
      #{appdir}/Sleepless.app/Contents/Resources/uninstall.sh
  EOS
end
