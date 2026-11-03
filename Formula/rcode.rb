class Rcode < Formula
  desc "Терминальный агент разработки с GigaChat, Yandex AI Studio, OpenRouter и локальными моделями"
  homepage "https://github.com/adw0rd/rcode"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adw0rd/rcode/releases/download/v0.9.2/rcode-v0.9.2-aarch64-apple-darwin.tar.gz"
      sha256 "a7cfe09352b96af27d2629301015062aaeb66b2c9fbcd2abe224b213a594a988"
    end
    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.9.2/rcode-v0.9.2-x86_64-apple-darwin.tar.gz"
      sha256 "48dbc672af1799f64a1e956de1b0eb56fa5d75751149f897d86679d2fc108728"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.9.2/rcode-v0.9.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19f6dbe30e69d02722a62f148be447d5eef476d809bb0590f8c77832c4bf0a0b"
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
