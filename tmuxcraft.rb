class Tmuxcraft < Formula
  desc "Go-based alternative to tmuxifier, using YAML configuration for tmux layouts"
  homepage "https://github.com/sugan0tech/tmuxcraft"
  version "1.0.0-alpha.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sugan0tech/tmuxcraft/releases/download/v1.0.0-alpha.4/tmuxcraft-darwin-amd64.zip"
      sha256 "383913a224531fa8711bd2e636b6549d263d0201c4d27f5b17ff393071ca6f21"
    end

    if Hardware::CPU.arm?
      url "https://github.com/sugan0tech/tmuxcraft/releases/download/v1.0.0-alpha.4/tmuxcraft-darwin-arm64.zip"
      sha256 "383913a224531fa8711bd2e636b6549d263d0201c4d27f5b17ff393071ca6f21"
    end
  end

  def install
    # Extract and install the binary directly
    system "unzip", cached_download # Extract the downloaded zip file
    bin.install "dist/tmuxcraft"

  end

  test do
    # Check that the installed binary runs correctly
    assert_match "Usage", shell_output("#{bin}/tmuxcraft --help")
  end
end

