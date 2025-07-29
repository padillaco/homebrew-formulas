
# This formula installs the Pantheon Sync script, which allows users to sync content from Pantheon sites to their local machine.
class PantheonSync < Formula
  desc "Sync content from Pantheon sites to your local machine"
  homepage "https://github.com/padillaco/homebrew-pantheon-sync"
  url "https://github.com/padillaco/homebrew-pantheon-sync/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "39cfc5feb921950409b0becb46133b3d6fed61b070fb9c134da0022faa9b84aa"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "pantheon-sync.sh" => "pantheon-sync"
  end

  test do
    system "#{bin}/pantheon-sync", "--version"
  end
end