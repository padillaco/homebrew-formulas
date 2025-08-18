
# This formula installs the WP Engine Sync script, which allows users to sync content from WP Engine sites to their local machine.
class WPEngineSync < Formula
  desc "Sync content from WP Engine sites to your local machine"
  homepage "https://github.com/padillaco/homebrew-wpengine-sync"
  url "https://github.com/padillaco/homebrew-wpengine-sync/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "95b8444ce86b1a62be5e8d35c4a8521b319eaf0cff793dc95755c362b6d844a1"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "wpengine-sync.sh" => "wpengine-sync"
  end

  test do
    system "#{bin}/wpengine-sync", "--version"
  end
end