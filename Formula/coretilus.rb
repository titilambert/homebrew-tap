class Coretilus < Formula
  desc "A parody of GNU Coreutils - playful typo-triggered terminal tools"
  homepage "https://github.com/titilambert/coretilus"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/titilambert/coretilus/releases/download/v0.7.0/coretilus-v0.7.0-macos_aarch64.tar.gz"
      sha256 "3e11032f92588c6189b98ef71436e345e4860aaf78ac3c1d736998ed6025cc67"
    else
      url "https://github.com/titilambert/coretilus/releases/download/v0.7.0/coretilus-v0.7.0-macos_x86_64.tar.gz"
      sha256 "83af7e09dcb8f9746cb52e5687953c92a9eb60b5aece22e49326002e193c8a0a"
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
