class Clitris < Formula
  desc "Command Line Interface Tetris"
  homepage "https://github.com/FinityFly/clitris"
  url "https://github.com/FinityFly/clitris/releases/download/v0.4.4/clitris-v0.4.4.tar.gz"
  sha256 "f24ecfcbdbd9e6594d404906784a8a07d6b05dd66c186f1ce29b7d33cddcafa8"
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
