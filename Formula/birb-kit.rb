class BirbKit < Formula
  desc "Personal CLI toolkit"
  homepage "https://github.com/Le-Polemil/birb-kit"
  url "https://github.com/Le-Polemil/birb-kit/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "30c6edd4717ce057212102d1e9a6083ec2f84daf421b860db84f50bca33bbe3b"
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
