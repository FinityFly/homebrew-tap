class Clitris < Formula
  desc "Command Line Interface Tetris"
  homepage "https://github.com/FinityFly/clitris"
  url "https://github.com/FinityFly/clitris/releases/download/v0.0.16/clitris-v0.0.16.tar.gz"
  sha256 "dc7f8a7d356c25b5f51e01d37fe19c24f366178a4c3e55c4a97f9acb2815ce44"
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
