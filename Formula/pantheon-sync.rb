
# This formula installs the Pantheon Sync script, which allows users to sync content from Pantheon sites to their local machine.
class PantheonSync < Formula
  desc "Sync content from Pantheon sites to your local machine"
  homepage "https://github.com/padillaco/homebrew-pantheon-sync"
  url "https://github.com/padillaco/homebrew-pantheon-sync/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "310fa776922cb22705abadbd8a649ea04ef86f7c03549a9ebdb2205340bdaad8"
  license "MIT"

  depends_on "bash"

  def install
    bin.install "pantheon-sync.sh" => "pantheon-sync"
  end

  test do
    system "#{bin}/pantheon-sync", "--version"
  end
end