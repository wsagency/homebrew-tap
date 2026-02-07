class Clamp < Formula
  desc "Move, fix, list, verify, and manage Claude Code projects"
  homepage "https://github.com/wsagency/claude-move-project"
  url "https://github.com/wsagency/claude-move-project/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "25b8dd01b8fde888b60c886c576eca65184da5f279fa9b870a7f59cb24ab25a1"
  license "MIT"

  def install
    bin.install "clamp"
  end

  test do
    assert_match "clamp v#{version}", shell_output("#{bin}/clamp --version")
  end
end
