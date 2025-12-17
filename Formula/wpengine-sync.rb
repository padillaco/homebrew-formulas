
# This formula installs the WP Engine Sync script, which allows users to sync content from WP Engine sites to their local machine.
class WpengineSync < Formula
  desc "Sync content from WP Engine sites to your local machine"
  homepage "https://github.com/padillaco/homebrew-wpengine-sync"
  url "https://github.com/padillaco/homebrew-wpengine-sync/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "wpengine-sync.sh" => "wpengine-sync"
  end

  test do
    system "#{bin}/wpengine-sync", "--version"
  end
end