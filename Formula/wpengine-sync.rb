
# This formula installs the WP Engine Sync script, which allows users to sync content from WP Engine sites to their local machine.
class WpengineSync < Formula
  desc "Sync content from WP Engine sites to your local machine"
  homepage "https://github.com/padillaco/homebrew-wpengine-sync"
  url "https://github.com/padillaco/homebrew-wpengine-sync/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "3833ad5aad001b4e0feb241d7638c71a3b1c345c17d967fca770094c60299f6d"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "wpengine-sync.sh" => "wpengine-sync"
  end

  test do
    system "#{bin}/wpengine-sync", "--version"
  end
end