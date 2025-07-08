class Clitris < Formula
  desc "Command Line Interface Tetris"
  homepage "https://github.com/FinityFly/clitris"
  url "https://github.com/FinityFly/clitris/releases/download/v0.4.1/clitris-v0.4.1.tar.gz"
  sha256 "52c6495c961ab7b3a30ce7cd7c3203d62b68eeda17e87c89bdb1592ca3976d43"
  license "MIT"

  uses_from_macos "ncurses"

  def install
    system "make"
    bin.install "clitris"
  end

  test do
    assert_match "usage", shell_output("#{bin}/tetris --help 2>&1", 1)
  end
end
