cask "twingate" do
  version "2025.72.12237"
  sha256 "5dd5f429b84fdf68846e3542d946fd505ae0035a93deeed2d6f49e7635fb5ec7"

  url "https://binaries.twingate.com/client/macos/#{version}/Twingate.pkg"
  name "Twingate"
  desc "Users gain access to your Twingate Network and are protected from threats by using the Twingate Client"
  homepage "https://www.twingate.com"

  pkg "Twingate.pkg"

  uninstall pkgutil: "com.twingate.macos"

  zap trash: [
    "~/Library/Preferences/com.twingate.macos.plist",
    "~/Library/Application Scripts/com.twingate.macos",
    "~/Library/Containers/com.twingate.macos.tunnelprovider",
    "~/Library/Group Containers/group.com.twingate"
  ]
end
