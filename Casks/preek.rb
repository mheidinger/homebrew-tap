cask "preek" do
  version "0.5.3"
  sha256 "a118fa447fc2f31ddd51ee6d5a4f26cb0675f0df27395575dccb769117492606"

  url "https://github.com/mheidinger/PReek/releases/download/v#{version}/PReek-#{version}.dmg"
  name "PReek"
  desc "GitHub Pull Request Notifications in your Menu Bar"
  homepage "https://github.com/mheidinger/PReek"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "PReek.app"

  uninstall quit:       "de.max-heidinger.PReek",
            login_item: "PReek"

  zap trash: [
    "~/Library/Application Scripts/de.max-heidinger.PReek",
    "~/Library/Containers/de.max-heidinger.PReek",
  ]
end
