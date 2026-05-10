class PolitoCli < Formula
  desc "CLI + TUI tool for PoliTo students"
  homepage "https://github.com/Jarmoco/polito-cli"
  license "MIT"

  if OS.mac?
    url "https://github.com/Jarmoco/polito-cli/releases/download/v0.1.0/polito_0.1.0_macos_aarch64.tar.gz"
    sha256 "8385762e5d6e1ffc81a3a663dda6c894e4fb8ab32eb8cbc6eaa10185680887f3"
  elsif OS.linux?
    url "https://github.com/Jarmoco/polito-cli/releases/download/v0.1.0/polito_0.1.0_linux_x86_64.tar.gz"
    sha256 "d332a43cde0c2d04204731dbdb330c4c159ad1f6e4e82ec9783b1a6346119f8e"
  end

  def install
    binary_path = Dir["**/polito"].first
    bin.install binary_path
    chmod 0755, bin/"polito"
  end

  test do
    system "#{bin}/polito", "-h"
  end
end
