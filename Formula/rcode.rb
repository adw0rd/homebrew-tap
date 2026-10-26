class Rcode < Formula
  desc "Терминальный агент разработки с GigaChat, Yandex AI Studio и OpenRouter"
  homepage "https://github.com/adw0rd/rcode"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adw0rd/rcode/releases/download/v0.5.1/rcode-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "a9d5ab5f7e4737efaf689edc3bea9b275e0c35c353f62f6f57a75ca801d5929a"
    end
    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.5.1/rcode-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "3ee56b07639e4c137804670033ab17a93a676a341519b0120e97c98771a85eed"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.5.1/rcode-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fe216d5f13e8bc7e97cfe4a6020523ac86b0264971a80e4fc3e518dd1e997101"
    end
  end

  def install
    bin.install "rcode"
  end

  test do
    assert_equal "rcode #{version}", shell_output("#{bin}/rcode --version").strip
    assert_match "Usage: rcode", shell_output("#{bin}/rcode --help")
  end
end
