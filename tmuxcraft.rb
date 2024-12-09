class Tmuxcraft < Formula
  desc "Go-based alternative to tmuxifier, using YAML configuration for tmux layouts"
  homepage "https://github.com/sugan0tech/tmuxcraft"
  version "1.0.0-alpha.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sugan0tech/tmuxcraft/releases/download/v1.0.0-alpha.3/tmuxcraft-darwin-amd64.zip"
      sha256 "ceebcc978b18959c991b0ba8c2cb78183c1394229eafc0fdda1a2355c04c7958"
    end

    if Hardware::CPU.arm?
      url "https://github.com/sugan0tech/tmuxcraft/releases/download/v1.0.0-alpha.3/tmuxcraft-darwin-arm64.zip"
      sha256 "a743d959cb3410350e181333e49933839990f8f64a67467e09c0e5f73caa3489"
    end
  end

  def install
    # Unzip the archive
    system "unzip", Dir["*.zip"].first

    # Move the binary from dist/ to the bin directory
    bin.install "dist/tmuxcraft"
  end

  test do
    system "#{bin}/tmuxcraft", "--help"
  end
end

