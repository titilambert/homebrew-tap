class Coretilus < Formula
  desc "A parody of GNU Coreutils - playful typo-triggered terminal tools"
  homepage "https://github.com/titilambert/coretilus"
  version "0.0.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/titilambert/coretilus/releases/download/v0.0.2/coretilus-v0.0.2-macos_aarch64.tar.gz"
      sha256 "19e4a0057fbb9715f690a4134320b40188ffeb2b5e4bb6f97a118e66e4696e64"
    else
      url "https://github.com/titilambert/coretilus/releases/download/v0.0.2/coretilus-v0.0.2-macos_x86_64.tar.gz"
      sha256 "c26235f67a357d904184a14d41d8d3fccace98123d0fc2356530260b0aee3e29"
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
