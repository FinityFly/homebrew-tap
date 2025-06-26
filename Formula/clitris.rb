class Clitris < Formula
  desc "Command Line Interface Tetris"
  homepage "https://github.com/FinityFly/clitris"
  url "https://github.com/FinityFly/clitris/releases/download/v0.2.2/clitris-v0.2.2.tar.gz"
  sha256 "d9d51a0d8f09b44224d95d0ec07819cb98d697926bdfde7797563daeacb273e3"
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
