class Termoil < Formula
  desc "Less friction for your multi-agent workflow"
  homepage "https://github.com/fantom845/termoil"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fantom845/termoil/releases/download/v0.1.0/termoil"
      sha256 "06c01cd319e877ad9aaf71efa388147392928c4f72c8648c7a01dfa19f682ff3"
    end
  end

  def install
    bin.install "termoil"
  end

  test do
    assert_match "termoil", shell_output("#{bin}/termoil --version")
  end
end
