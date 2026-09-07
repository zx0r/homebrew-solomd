cask "solomd" do
  version "4.12.0"
  sha256 "ef783f2cb829e09e4ef692684e5bff3c00b6f6db28eec9611664edc7a48f6965"

  url "https://github.com/zx0r/solomd/releases/download/v4.12.0/SoloMD_4.12.0_aarch64.dmg"
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
