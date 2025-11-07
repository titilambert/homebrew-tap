class Coretilus < Formula
  desc "A parody of GNU Coreutils - playful typo-triggered terminal tools"
  homepage "https://github.com/titilambert/coretilus"
  version "0.0.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/titilambert/coretilus/releases/download/v0.0.2/coretilus-v0.0.2-macos_aarch64.tar.gz"
      sha256 "ab037c9bd2b8ccdc62ad052970c3d92bda2ad22d13f10ab0f7e3c959c0d4f2b3"
    else
      url "https://github.com/titilambert/coretilus/releases/download/v0.0.2/coretilus-v0.0.2-macos_x86_64.tar.gz"
      sha256 "89b1316689e843022fd54dc087db26c8a08bac6ae616bce39b425ceca42dc620"
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
