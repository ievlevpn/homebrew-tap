cask "sticky-calendar" do
  version "0.21.0"
  sha256 "d954873cef051701ea46fdefb3d7b062fd8b1ab9593cfb0bdbb76a44bc5c96d9"

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
