
# This formula installs the WP Engine Sync script, which allows users to sync content from WP Engine sites to their local machine.
class WpengineSync < Formula
  desc "Sync content from WP Engine sites to your local machine"
  homepage "https://github.com/padillaco/homebrew-wpengine-sync"
  url "https://github.com/padillaco/homebrew-wpengine-sync/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "e98ed0dd3567744e19aeaee4f209ab4ceaef5d75fc3ef4d604d385dcd85f3a05"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "wpengine-sync.sh" => "wpengine-sync"
  end

  test do
    system "#{bin}/wpengine-sync", "--version"
  end
end