cask "kerf" do
  version "0.2.0"
  sha256 "dedcbe61aca0b736c1e4a45e6a12c84fa37f79a0d6057b36dec18f5b27c2ae8f"

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
