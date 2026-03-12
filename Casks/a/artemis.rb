cask "artemis" do
  version "0.6.7-dev.20250831.0017+afe2de7"
  sha256 "1aab8a4afd6211ef89f447d111bef6a5857e4bcaea16c41ca1921e6a3a63e956"

  url "https://github.com/wjbeckett/artemis/releases/download/#{version}/Artemis-#{version}.dmg",
      verified: "github.com/wjbeckett/artemis/"
  name "Artemis"
  desc "GameStream client"
  homepage "https://github.com/wjbeckett/artemis"

  depends_on macos: ">= :big_sur"

  app "Artemis.app"

  postflight do
    print("Removing quarantine attribute from Artemis.\n")
    system "xattr -cr '/Applications/Artemis.app'"
  end

  zap trash: [
    "~/Library/Caches/Artemis Desktop Project",
    "~/Library/Preferences/Artemis Desktop Project",
    "~/Library/Preferences/com.artemisdesktop.Artemis.plist",
    "~/Library/Saved Application State/com.artemis_desktop.Artemis.savedState",
  ]
end
