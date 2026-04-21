class BirbKit < Formula
  desc "Personal CLI toolkit"
  homepage "https://github.com/Le-Polemil/birb-kit"
  url "https://github.com/Le-Polemil/birb-kit/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "f38c8351c575e5dc3b8bc9585642d4969079dfa7436bece5cf2f719d4d69bf67"
  license "MIT"

  depends_on "gh"
  depends_on "jq"

  def install
    bin.install "bin/birb"
    libexec.install Dir["libexec/*"]
  end

  test do
    assert_match "birb", shell_output("#{bin}/birb --version")
  end
end
