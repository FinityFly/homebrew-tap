class Clitris < Formula
  desc "Command Line Interface Tetris"
  homepage "https://github.com/FinityFly/clitris"
  url "https://github.com/FinityFly/clitris/releases/download/v0.3.3/clitris-v0.3.3.tar.gz"
  sha256 "0ad4f1dabeea659bbf08e27f30c13d27d0796d545c2fd3f1fe844c2a8e45b44b"
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
