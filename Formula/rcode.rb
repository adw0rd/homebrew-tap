class Rcode < Formula
  desc "Терминальный агент разработки с GigaChat, Yandex AI Studio и OpenRouter"
  homepage "https://github.com/adw0rd/rcode"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/adw0rd/rcode/releases/download/v0.5.0/rcode-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "8f3a91e072eca8eb77ead2f3b123d2aca211264303cfb387366ee19f581b7c62"
    end
    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.5.0/rcode-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "b9fa644f8bd5b9277408e8a5a38f2a9c4faff4754ed7b444fab792c932094407"
    end
  end

  on_linux do
    depends_on arch: :x86_64

    on_intel do
      url "https://github.com/adw0rd/rcode/releases/download/v0.5.0/rcode-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a768c7677e0f4c57218039d507c651c4693e385294ee41640cea9fc8ca89410e"
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
