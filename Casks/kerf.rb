cask "kerf" do
  version "0.1.0"
  sha256 "f5915f90f61bd809969b976754a35c24befd94ba68c9eabe2cde8733a413e9f8"

  url "https://github.com/paultje1900/kerf/releases/download/v#{version}/Kerf-#{version}.zip"
  name "Kerf"
  desc "Dynamic Island for the MacBook notch"
  homepage "https://github.com/paultje1900/kerf"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Kerf.app"
  binary "#{appdir}/Kerf.app/Contents/MacOS/Kerf", target: "kerf"

  uninstall quit: "nl.paulboerma.kerf"

  zap trash: [
    "~/Library/Application Support/Kerf",
    "~/Library/Caches/nl.paulboerma.kerf",
    "~/Library/HTTPStorages/nl.paulboerma.kerf",
    "~/Library/Preferences/nl.paulboerma.kerf.plist",
  ]
end
