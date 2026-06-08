cask "preek" do
  version "0.6.0"
  sha256 "6a6f562fb47fc7fd034d598320dca9d4600612559e68e1a003c68fac697dd1d6"

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
