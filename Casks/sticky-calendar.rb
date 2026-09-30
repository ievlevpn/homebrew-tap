cask "sticky-calendar" do
  version "0.22.0"
  sha256 "1c49e82d7cbef546b6b9481f329d2297d5fec6498d0b69609a25f7302912fc9b"

  url "https://github.com/ievlevpn/sticky-calendar/releases/download/v#{version}/StickyCalendar-#{version}.dmg"
  name "Sticky Calendar"
  desc "Floating, always-on-top timeline of the day's calendar"
  homepage "https://github.com/ievlevpn/sticky-calendar"

  depends_on macos: :sonoma

  app "StickyCalendar.app"

  zap trash: "~/Library/Preferences/com.ievlevpn.StickyCalendar.plist"

  caveats <<~EOS
    Sticky Calendar is not notarized by Apple. The first time you open it, macOS will
    block it: go to System Settings → Privacy & Security and click "Open Anyway".
  EOS
end
