cask "solomd" do
  version "0.0.0-ci.test.2"
  sha256 "e8a2ceefd93f02cce4152a54d9c58047a42e1112b38628821d6cdbbbc29485d5"

  url "https://github.com/zx0r/solomd/releases/download/v0.0.0-ci.test.2/SoloMD_4.12.0_aarch64.dmg"
  name "SoloMD"
  desc "Markdown editor and bridge to your LLM"
  homepage "https://solomd.app/"
  auto_updates true

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "SoloMD.app"

  zap trash: [
    "~/Library/Application Support/app.solomd",
    "~/Library/Caches/app.solomd",
    "~/Library/Preferences/app.solomd.plist",
    "~/Library/Saved Application State/app.solomd.savedState",
    "~/Library/WebKit/app.solomd",
  ]
end
