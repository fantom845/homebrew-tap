class Termoil < Formula
  desc "Less friction for your multi-agent workflow"
  homepage "https://github.com/fantom845/termoil"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fantom845/termoil/releases/download/v0.1.1/termoil"
      sha256 "2262b81cd34da1e96830f74b789674b52896d8969ae406005952c9161a526992"
    end
  end

  def install
    bin.install "termoil"
  end

  test do
    assert_match "termoil", shell_output("#{bin}/termoil --version")
  end
end
