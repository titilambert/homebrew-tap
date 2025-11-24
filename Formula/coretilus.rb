class Coretilus < Formula
  desc "A parody of GNU Coreutils - playful typo-triggered terminal tools"
  homepage "https://github.com/titilambert/coretilus"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/titilambert/coretilus/releases/download/v0.2.0/coretilus-v0.2.0-macos_aarch64.tar.gz"
      sha256 "dde7ce154e2081fae51a544be04bf74423274145bacf05ea0923c4d0a904f7bc"
    else
      url "https://github.com/titilambert/coretilus/releases/download/v0.2.0/coretilus-v0.2.0-macos_x86_64.tar.gz"
      sha256 "a30000d97084908d1c07eb961334f9f3078a93b6cddfd1f1ba73818863e38372"
    end
  end

  def install
    bin.install "mr"
    bin.install "sl"
    bin.install "pc"
    bin.install "gti"

  end

  test do
    assert_match "mr", shell_output("#{bin}/mr --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "sl", shell_output("#{bin}/sl --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "pc", shell_output("#{bin}/pc --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "gti", shell_output("#{bin}/gti --version 2>{{BINARIES_TEST}}1", 0)

  end
end
