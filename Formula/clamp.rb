class Clamp < Formula
  desc "Move, fix, list, verify, prune, and manage Claude Code projects"
  homepage "https://github.com/wsagency/claude-move-project"
  url "https://github.com/wsagency/claude-move-project/archive/refs/tags/v1.4.1.tar.gz"
  sha256 "fb8b4347d1c18cc1b7145d81140baf6d8c977f88b248382cc829fceb24230f7e"
  license "MIT"

  def install
    bin.install "clamp"
  end

  test do
    assert_match "clamp v#{version}", shell_output("#{bin}/clamp --version")
  end
end
