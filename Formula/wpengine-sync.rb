
# This formula installs the WP Engine Sync script, which allows users to sync content from WP Engine sites to their local machine.
class WpengineSync < Formula
  desc "Sync content from WP Engine sites to your local machine"
  homepage "https://github.com/padillaco/homebrew-wpengine-sync"
  url "https://github.com/padillaco/homebrew-wpengine-sync/archive/refs/tags/v0.4.3.tar.gz"
  sha256 "7fd266fc4d68ee5ff8863868c5863280c32b80848ad2740f376dc1bf631330d2"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "wpengine-sync.sh" => "wpengine-sync"
  end

  test do
    system "#{bin}/wpengine-sync", "--version"
  end
end