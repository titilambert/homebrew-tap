class Coretilus < Formula
  desc "A parody of GNU Coreutils - playful typo-triggered terminal tools"
  homepage "https://github.com/titilambert/coretilus"
  version "0.0.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/titilambert/coretilus/releases/download/v0.0.3/coretilus-v0.0.3-macos_aarch64.tar.gz"
      sha256 "b2b7059367b55429aa1848c879c611e45667fb70aa59c82784e2b227151ab0e8"
    else
      url "https://github.com/titilambert/coretilus/releases/download/v0.0.3/coretilus-v0.0.3-macos_x86_64.tar.gz"
      sha256 "7dded1b8c40add2b800038a0c98a5f11bf3f9fa969c8f584af1f739968016563"
    end
  end

  def install
    bin.install "sl"
    bin.install "gti"

  end

  test do
    assert_match "sl", shell_output("#{bin}/sl --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "gti", shell_output("#{bin}/gti --version 2>{{BINARIES_TEST}}1", 0)

  end
end
