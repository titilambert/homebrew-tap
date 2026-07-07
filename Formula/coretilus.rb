class Coretilus < Formula
  desc "A parody of GNU Coreutils - playful typo-triggered terminal tools"
  homepage "https://github.com/titilambert/coretilus"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/titilambert/coretilus/releases/download/v0.4.0/coretilus-v0.4.0-macos_aarch64.tar.gz"
      sha256 "15aacf96dc9db218091a3e4d35a0c159a7adcf4dfb5f160dc599f4941f869f3e"
    else
      url "https://github.com/titilambert/coretilus/releases/download/v0.4.0/coretilus-v0.4.0-macos_x86_64.tar.gz"
      sha256 "a1d9ab497a338fa47649bbeb2f0fd52c95bb80b2540c7fbe3a038f6465a19e3c"
    end
  end

  def install
    bin.install "pc"
    bin.install "gti"
    bin.install "mr"
    bin.install "dog"
    bin.install "sl"

  end

  test do
    assert_match "pc", shell_output("#{bin}/pc --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "gti", shell_output("#{bin}/gti --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "mr", shell_output("#{bin}/mr --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "dog", shell_output("#{bin}/dog --version 2>{{BINARIES_TEST}}1", 0)
    assert_match "sl", shell_output("#{bin}/sl --version 2>{{BINARIES_TEST}}1", 0)

  end
end
