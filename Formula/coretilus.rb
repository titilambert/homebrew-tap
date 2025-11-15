class Coretilus < Formula
  desc "A parody of GNU Coreutils - playful typo-triggered terminal tools"
  homepage "https://github.com/titilambert/coretilus"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/titilambert/coretilus/releases/download/v0.1.0/coretilus-v0.1.0-macos_aarch64.tar.gz"
      sha256 "4f887c08a4c5afdcc7f8b5adad7487e02ee950d92f27e5cc1c546ee5649a0a54"
    else
      url "https://github.com/titilambert/coretilus/releases/download/v0.1.0/coretilus-v0.1.0-macos_x86_64.tar.gz"
      sha256 "a033c3a8d90498524d0804e0e4126e39791a8ec8d99cf0c6b483543ba0b99d91"
    end
  end

  def install
    bin.install "sl"
    bin.install "pc"
    bin.install "gti"

  end

  test do
    assert_match "sl", shell_output("#{bin}/sl --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "pc", shell_output("#{bin}/pc --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "gti", shell_output("#{bin}/gti --version 2>{{BINARIES_TEST}}1", 0)

  end
end
