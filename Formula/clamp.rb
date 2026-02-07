class Clamp < Formula
  desc "Move, fix, list, verify, and manage Claude Code projects"
  homepage "https://github.com/wsagency/claude-move-project"
  url "https://github.com/wsagency/claude-move-project/archive/refs/tags/v1.3.1.tar.gz"
  sha256 "69321d9833a5c46561729246e5425fa85e74b4d8626fd101b3d36bf753ea0376"
  license "MIT"

  def install
    bin.install "clamp"
  end

  test do
    assert_match "clamp v#{version}", shell_output("#{bin}/clamp --version")
  end
end
