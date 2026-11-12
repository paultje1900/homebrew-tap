cask "kerf" do
  version "0.3.0"
  sha256 "c7969c70a64decee4b37989147ecbaab059f9b799f350228c6a3cd670baa810f"

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
