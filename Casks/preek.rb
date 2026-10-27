cask "preek" do
  version "0.8.1"
  sha256 "1de37a6b2d11745ae465aec2f1403888d295e08599dcaec44151b3d06b0a32b3"

  url "https://github.com/mheidinger/PReek/releases/download/v#{version}/PReek-#{version}.dmg"
  name "PReek"
  desc "GitHub Pull Request Notifications in your Menu Bar"
  homepage "https://github.com/mheidinger/PReek"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "PReek.app"

  uninstall quit:       "de.max-heidinger.PReek",
            login_item: "PReek"

  zap trash: [
    "~/Library/Application Scripts/de.max-heidinger.PReek",
    "~/Library/Containers/de.max-heidinger.PReek",
  ]
end
