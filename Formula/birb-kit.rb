class BirbKit < Formula
  desc "Personal CLI toolkit"
  homepage "https://github.com/Le-Polemil/birb-kit"
  url "https://github.com/Le-Polemil/birb-kit/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "9d55bd22f29cefa0529341f59dbf889ae09b05a9517b90244c2256b6e4674053"
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
