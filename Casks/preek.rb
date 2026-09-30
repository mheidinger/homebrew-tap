cask "preek" do
  version "0.8.0"
  sha256 "b9400d150073513c40cbe9993ce25066ab42a461af42bbf63a76d77ea45b3cfa"

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
