class Clitris < Formula
  desc "Command Line Interface Tetris"
  homepage "https://github.com/FinityFly/clitris"
  url "https://github.com/FinityFly/clitris/releases/download/v0.2.1/clitris-v0.2.1.tar.gz"
  sha256 "02b23c41ee3d0cc01c98f827ce755612ab7f9c18b8f2dd236424e4ce9fbe427b"
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
