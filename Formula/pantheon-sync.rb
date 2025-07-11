
# This formula installs the Pantheon Sync script, which allows users to sync content from Pantheon sites to their local machine.
class PantheonSync < Formula
  desc "Sync content from Pantheon sites to your local machine"
  homepage "https://github.com/padillaco/homebrew-pantheon-sync"
  url "https://github.com/padillaco/homebrew-pantheon-sync/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "b4c36a1c0956abd6fd8f79a3f359c0a7ac1b51fc26ca05fd9f704eb0e8084756"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "pantheon-sync.sh" => "pantheon-sync"
  end

  test do
    system "#{bin}/pantheon-sync", "--version"
  end
end