cask "sticky-calendar" do
  version "0.12.0"
  sha256 "b67384e5bd7e2c8994a620514e10f949f73391534babaeee55e9a8a02f0e6df5"

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
