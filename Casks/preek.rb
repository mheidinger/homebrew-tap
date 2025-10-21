cask "preek" do
  version "0.5.4"
  sha256 "a2deddcbf653c1ee03a825365e9f5b647aa5c1321fc01833eb2d9ebb957da551"

  url "https://github.com/mheidinger/PReek/releases/download/v#{version}/PReek-#{version}.dmg"
  name "PReek"
  desc "GitHub Pull Request Notifications in your Menu Bar"
  homepage "https://github.com/mheidinger/PReek"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "PReek.app"

  uninstall quit:       "de.max-heidinger.PReek",
            login_item: "PReek"

  zap trash: [
    "~/Library/Application Scripts/de.max-heidinger.PReek",
    "~/Library/Containers/de.max-heidinger.PReek",
  ]
end
