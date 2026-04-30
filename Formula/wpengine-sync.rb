
# This formula installs the WP Engine Sync script, which allows users to sync content from WP Engine sites to their local machine.
class WpengineSync < Formula
  desc "Sync content from WP Engine sites to your local machine"
  homepage "https://github.com/padillaco/homebrew-wpengine-sync"
  url "https://github.com/padillaco/homebrew-wpengine-sync/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "b89a0993c47c0c768056f50d929bdcec3797b08345ac3987cea1fa9d7928531d"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "wpengine-sync.sh" => "wpengine-sync"
  end

  test do
    system "#{bin}/wpengine-sync", "--version"
  end
end