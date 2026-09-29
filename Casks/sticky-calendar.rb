cask "sticky-calendar" do
  version "0.7.0"
  sha256 "c52c73db73bcf6e316f6bb40f34f1e9887bcf847e729a95846c15c75933ee993"

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
