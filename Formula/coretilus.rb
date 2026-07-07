class Coretilus < Formula
  desc "A parody of GNU Coreutils - playful typo-triggered terminal tools"
  homepage "https://github.com/titilambert/coretilus"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/titilambert/coretilus/releases/download/v0.6.0/coretilus-v0.6.0-macos_aarch64.tar.gz"
      sha256 "f85b712274390e080d988478983909b7ac6bc301324ad673d6b8da5f06c2bc7c"
    else
      url "https://github.com/titilambert/coretilus/releases/download/v0.6.0/coretilus-v0.6.0-macos_x86_64.tar.gz"
      sha256 "2e952af372133c4b1b34771e9d4c69e3cc747abc2ae1434016a9e2da48c88db2"
    end
  end

  def install
    bin.install "pc"
    bin.install "gti"
    bin.install "ehco"
    bin.install "mr"
    bin.install "dog"
    bin.install "sl"
    bin.install "gb"

  end

  test do
    assert_match "pc", shell_output("#{bin}/pc --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "gti", shell_output("#{bin}/gti --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "ehco", shell_output("#{bin}/ehco --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "mr", shell_output("#{bin}/mr --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "dog", shell_output("#{bin}/dog --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "sl", shell_output("#{bin}/sl --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "gb", shell_output("#{bin}/gb --version 2>{{BINARIES_TEST}}1", 0)

  end
end
