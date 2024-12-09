class Tmuxcraft < Formula
  desc "Go-based alternative to tmuxifier, using YAML configuration for tmux layouts"
  homepage "https://github.com/sugan0tech/tmuxcraft"
  version "1.0.0-alpha.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sugan0tech/tmuxcraft/releases/download/v1.0.0-alpha.3/tmuxcraft-darwin-amd64"
      sha256 "71e0ff49c8c4c9ec6324d43ce7d392c090b2f55831be91f4ee864a80d3238de6"
    end

    if Hardware::CPU.arm?
      url "https://github.com/sugan0tech/tmuxcraft/releases/download/v1.0.0-alpha.3/tmuxcraft-darwin-arm64"
      sha256 "5eb3300973af7b89493c622918ed806db8911f3de0a8bc2472aee8c9862d2241"
    end
  end

  def install
    bin.install "tmuxcraft"
  end

  test do
    system "#{bin}/tmuxcraft", "--help"
  end
end

