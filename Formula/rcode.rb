class Rcode < Formula
  desc "Терминальный агент разработки с GigaChat, Yandex AI Studio и OpenRouter"
  homepage "https://github.com/adw0rd/rcode"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adw0rd/rcode/releases/download/v0.6.1/rcode-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "1d31a7efe83ddf1cdc34234172e73b92674fbb46401f5658add57991817648ba"
    end
    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.6.1/rcode-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "0d5a38c4fd7162c73802dc6944e0ec22f4f1e16c751ed0e029237ec8b2357f67"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.6.1/rcode-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "606562b1a4a2b95be22c96154dadff01e2c08d2d3a995c82a02ef0244cb6d8b7"
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
