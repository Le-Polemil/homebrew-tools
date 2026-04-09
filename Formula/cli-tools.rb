class CliTools < Formula
  desc "Personal CLI tools collection"
  homepage "https://github.com/Le-Polemil/cli-tools"
  url "https://github.com/Le-Polemil/cli-tools/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "44571f89a98c987a807b399ccec956a8723fb1cedde27bbab0a703250aa59e71"
  license "MIT"

  depends_on "gh"
  depends_on "jq"

  def install
    bin.install Dir["bin/*"]
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/gh-merge --help")
  end
end
