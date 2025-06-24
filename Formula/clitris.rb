class Clitris < Formula
  desc "Command Line Interface Tetris"
  homepage "https://github.com/FinityFly/clitris"
  url "https://github.com/FinityFly/clitris/releases/download/v0.0.10/clitris-v0.0.10.tar.gz"
  sha256 "ca9e1a34a15e0b010c40cc7b8b4b87dd7f1eff7af8969059dd1a3f664d55a623"
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
