class Coretilus < Formula
  desc "A parody of GNU Coreutils - playful typo-triggered terminal tools"
  homepage "https://github.com/titilambert/coretilus"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/titilambert/coretilus/releases/download/v0.5.0/coretilus-v0.5.0-macos_aarch64.tar.gz"
      sha256 "73da08a717640aafd0ab8fea5481f880b996c31bbd44d2b1891e64600d381891"
    else
      url "https://github.com/titilambert/coretilus/releases/download/v0.5.0/coretilus-v0.5.0-macos_x86_64.tar.gz"
      sha256 "cd5a73e9ea16cc8c3f77afb05f5d39f887e1d077d34035b5c7d2883c9ace2964"
    end
  end

  def install
    bin.install "pc"
    bin.install "gti"
    bin.install "mr"
    bin.install "dog"
    bin.install "sl"
    bin.install "gb"

  end

  test do
    assert_match "pc", shell_output("#{bin}/pc --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "gti", shell_output("#{bin}/gti --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "mr", shell_output("#{bin}/mr --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "dog", shell_output("#{bin}/dog --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "sl", shell_output("#{bin}/sl --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "gb", shell_output("#{bin}/gb --version 2>{{BINARIES_TEST}}1", 0)

  end
end
