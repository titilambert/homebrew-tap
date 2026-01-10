class Coretilus < Formula
  desc "A parody of GNU Coreutils - playful typo-triggered terminal tools"
  homepage "https://github.com/titilambert/coretilus"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/titilambert/coretilus/releases/download/v0.3.0/coretilus-v0.3.0-macos_aarch64.tar.gz"
      sha256 "aac6bae3b9201359b1a024fdf6d08c917f41841be844e24faf679a9ba9e22f83"
    else
      url "https://github.com/titilambert/coretilus/releases/download/v0.3.0/coretilus-v0.3.0-macos_x86_64.tar.gz"
      sha256 "c2e76facc4109608fc0708636206e7b0a1d5dc0cbd6dbbf0601956d7e73a38ba"
    end
  end

  def install
    bin.install "mr"
    bin.install "sl"
    bin.install "dog"
    bin.install "pc"
    bin.install "gti"

  end

  test do
    assert_match "mr", shell_output("#{bin}/mr --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "sl", shell_output("#{bin}/sl --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "dog", shell_output("#{bin}/dog --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "pc", shell_output("#{bin}/pc --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "gti", shell_output("#{bin}/gti --version 2>{{BINARIES_TEST}}1", 0)

  end
end
