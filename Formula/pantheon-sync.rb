
# This formula installs the Pantheon Sync script, which allows users to sync content from Pantheon sites to their local machine.
class PantheonSync < Formula
  desc "Sync content from Pantheon sites to your local machine"
  homepage "https://github.com/padillaco/homebrew-pantheon-sync"
  url "https://github.com/padillaco/homebrew-pantheon-sync/archive/refs/tags/v0.6.6.tar.gz"
  sha256 "bc5235225d45cb702064bdacf11deff6d1a141cce67be398cff731702562ef97"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "pantheon-sync.sh" => "pantheon-sync"
  end

  test do
    system "#{bin}/pantheon-sync", "--version"
  end
end