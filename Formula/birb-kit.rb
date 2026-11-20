class BirbKit < Formula
  desc "Personal CLI toolkit"
  homepage "https://github.com/Le-Polemil/birb-kit"
  url "https://github.com/Le-Polemil/birb-kit/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "33c5be5c6f5b38d8b8917882735599c8471fda2e78f73e2a0dbff3291204c630"
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
