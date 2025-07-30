class Clitris < Formula
  desc "Command Line Interface Tetris"
  homepage "https://github.com/FinityFly/clitris"
  url "https://github.com/FinityFly/clitris/releases/download/v0.4.6/clitris-v0.4.6.tar.gz"
  sha256 "6bbb02cab5cd999a88e6559e9005a92d21a17f6093dcc18118c37c7e2d0eecf9"
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
