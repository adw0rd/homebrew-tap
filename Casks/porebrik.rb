cask "porebrik" do
  version "2.22.357"
  sha256 "1daadd979e2f0aa552d9976106b1611746fb9472a28eb517d01881b475e419a9"

  url "https://github.com/adw0rd/homebrew-tap/releases/download/porebrik-v#{version}/porebrik-mac.zip"
  name "Поребрик"
  name "Porebrik"
  desc "Экшен в открытом мире Санкт-Петербурга от третьего лица"
  homepage "https://adw0rd.itch.io/porebrik"

  depends_on macos: ">= :ventura"

  app "porebrik.app", target: "Поребрик.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Поребрик.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/Godot/app_userdata/Поребрик",
    "~/Library/Saved Application State/com.adw0rd.porebrik.savedState",
  ]
end
