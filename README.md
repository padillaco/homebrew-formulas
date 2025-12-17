# Homebrew Formulas

Custom Homebrew tap for WP Engine and Pantheon sync tools.

## Available Formulas

- **wpengine-sync** - Sync content from WP Engine sites to your local machine
- **pantheon-sync** - Sync content from Pantheon sites to your local machine

## Installation

Users can install these formulas by tapping this repository:

```sh
brew tap padillaco/formulas
brew install wpengine-sync
# or
brew install pantheon-sync
```

## Maintaining the Formulas

This repository contains Homebrew formulas that point to the release tarballs from the main project repositories.

### When to Update

Update the formulas in this repository whenever a new version is released in:
- [homebrew-wpengine-sync](https://github.com/padillaco/homebrew-wpengine-sync)
- [homebrew-pantheon-sync](https://github.com/padillaco/homebrew-pantheon-sync)

### Updating Formula Versions

When a new version is released in the source repository, follow these steps:

#### 1. Get the New Version Information

After creating a release in the source repository (e.g., `v0.3.0`), GitHub automatically generates a tarball:

```
https://github.com/padillaco/homebrew-wpengine-sync/archive/refs/tags/v0.3.0.tar.gz
```

#### 2. Calculate the SHA256 Hash

Download and hash the release tarball:

```sh
# For wpengine-sync
curl -L https://github.com/padillaco/homebrew-wpengine-sync/archive/refs/tags/v0.3.0.tar.gz -o /tmp/wpengine-sync.tar.gz
shasum -a 256 /tmp/wpengine-sync.tar.gz

# For pantheon-sync
curl -L https://github.com/padillaco/homebrew-pantheon-sync/archive/refs/tags/v0.5.0.tar.gz -o /tmp/pantheon-sync.tar.gz
shasum -a 256 /tmp/pantheon-sync.tar.gz
```

The output will be a hash like: `3833ad5aad001b4e0feb241d7638c71a3b1c345c17d967fca770094c60299f6d`

#### 3. Update the Formula File

Edit the appropriate formula file in `Formula/`:

**For wpengine-sync.rb:**
```ruby
class WpengineSync < Formula
  desc "Sync content from WP Engine sites to your local machine"
  homepage "https://github.com/padillaco/homebrew-wpengine-sync"
  url "https://github.com/padillaco/homebrew-wpengine-sync/archive/refs/tags/v0.3.0.tar.gz"  # Update version
  sha256 "3833ad5aad001b4e0feb241d7638c71a3b1c345c17d967fca770094c60299f6d"  # Update hash
  license "MIT"

  depends_on "bash"

  def install
    bin.install "wpengine-sync.sh" => "wpengine-sync"
  end

  test do
    system "#{bin}/wpengine-sync", "--version"
  end
end
```

**For pantheon-sync.rb:**
```ruby
class PantheonSync < Formula
  desc "Sync content from Pantheon sites to your local machine"
  homepage "https://github.com/padillaco/homebrew-pantheon-sync"
  url "https://github.com/padillaco/homebrew-pantheon-sync/archive/refs/tags/v0.5.0.tar.gz"  # Update version
  sha256 "e8b370c24d16cf34e621640ddf1dbe651d981186d0bd139e5de602e323f1d8ef"  # Update hash
  license "MIT"

  depends_on "bash"

  def install
    bin.install "pantheon-sync.sh" => "pantheon-sync"
  end

  test do
    system "#{bin}/pantheon-sync", "--version"
  end
end
```

#### 4. Test the Updated Formula

Before committing, test the formula locally:

```sh
# Uninstall the current version
brew uninstall wpengine-sync

# Install from the updated formula (build from source to test immediately)
brew install --build-from-source wpengine-sync

# Verify the new version
wpengine-sync --version
```

#### 5. Commit and Push Changes

```sh
git add Formula/wpengine-sync.rb  # or Formula/pantheon-sync.rb
git commit -m "Update wpengine-sync to v0.3.0"
git push origin main
```

#### 6. Verify Installation for Users

Once pushed, users can update to the new version:

```sh
brew update
brew upgrade wpengine-sync
```

### Testing Formulas

Homebrew provides built-in tools to test formulas:

```sh
# Audit the formula for issues
brew audit --strict Formula/wpengine-sync.rb

# Test installation
brew install --build-from-source wpengine-sync

# Run the formula's test block
brew test wpengine-sync
```

### Common Issues

**Hash Mismatch**
- Ensure you're downloading from the correct tag URL
- Verify the tarball is fully downloaded before calculating the hash
- GitHub may take a moment to generate the tarball after creating a release

**Installation Fails**
- Check that the tarball contains the expected script file
- Verify the `bin.install` line references the correct filename
- Ensure dependencies are correctly specified

**Users Can't Find Updates**
- Make sure users run `brew update` before `brew upgrade`
- Verify the formula file is committed and pushed to GitHub

### Formula Structure

Each formula follows this basic structure:

```ruby
class PackageName < Formula
  desc "Brief description"
  homepage "Project homepage URL"
  url "Release tarball URL with version tag"
  sha256 "SHA256 hash of the tarball"
  license "License type"

  # Dependencies
  depends_on "dependency-name"

  def install
    # Installation instructions
    bin.install "script.sh" => "command-name"
  end

  test do
    # Test to verify installation
    system "#{bin}/command-name", "--version"
  end
end
```

## Contributing

To contribute improvements to these formulas:

1. Fork this repository
2. Make your changes in a new branch
3. Test the formula changes locally
4. Submit a pull request with a clear description of the changes

## Resources

- [Homebrew Formula Cookbook](https://docs.brew.sh/Formula-Cookbook)
- [Homebrew Taps Documentation](https://docs.brew.sh/Taps)
- [How to Create Homebrew Formulas](https://docs.brew.sh/How-To-Create-and-Maintain-a-Tap)
