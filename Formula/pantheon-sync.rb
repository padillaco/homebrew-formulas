
# This formula installs the Pantheon Sync script, which allows users to sync content from Pantheon sites to their local machine.
class PantheonSync < Formula
  desc "Sync content from Pantheon sites to your local machine"
  homepage "https://github.com/padillaco/homebrew-pantheon-sync"
  url "https://github.com/padillaco/homebrew-pantheon-sync/archive/refs/tags/v0.4.5.tar.gz"
  sha256 "0ccfc91ebe57303d99c3baa6b1fc381da1706f4e593bf5537fe80f2a04d791a6"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "pantheon-sync.sh" => "pantheon-sync"
  end

  test do
    system "#{bin}/pantheon-sync", "--version"
  end
end