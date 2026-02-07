class Clamp < Formula
  desc "Move, fix, list, verify, prune, and manage Claude Code projects"
  homepage "https://github.com/wsagency/claude-move-project"
  url "https://github.com/wsagency/claude-move-project/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "0844277e484413ee82c8a16546ce2d444acf3c519713f05016736124eebd0852"
  license "MIT"

  def install
    bin.install "clamp"
  end

  test do
    assert_match "clamp v#{version}", shell_output("#{bin}/clamp --version")
  end
end
