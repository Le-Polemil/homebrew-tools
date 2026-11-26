class BirbKit < Formula
  desc "Personal CLI toolkit"
  homepage "https://github.com/Le-Polemil/birb-kit"
  url "https://github.com/Le-Polemil/birb-kit/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "9df0e4c3fec4cab83714936be0d2cfa122c12ef270ab04f5084bea907261ac74"
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
