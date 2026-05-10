class PolitoCli < Formula
  desc "CLI + TUI tool for PoliTo students"
  homepage "https://github.com/Jarmoco/polito-cli"
  license "MIT"

  if OS.mac?
    url "https://github.com/Jarmoco/polito-cli/releases/download/v0.1.0/polito_0.1.0_macos_aarch64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  elsif OS.linux?
    url "https://github.com/Jarmoco/polito-cli/releases/download/v0.1.0/polito_0.1.0_linux_x86_64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
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
