class Rcode < Formula
  desc "Терминальный агент разработки с GigaChat, Yandex AI Studio и OpenRouter"
  homepage "https://github.com/adw0rd/rcode"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adw0rd/rcode/releases/download/v0.6.0/rcode-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "bd955b871b8534fa430004ec124b3b2060f9a3029f496175fa7aa16b831c9ad2"
    end
    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.6.0/rcode-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "69f9243571c445584a1c05ce30daa0cadef4f63920d4cbaef38f8c87ce89a8fd"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.6.0/rcode-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "986ef4e618012607087ef1b7c5f12b521faba8fcef46b3f1042c1bf3f2f24a66"
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
