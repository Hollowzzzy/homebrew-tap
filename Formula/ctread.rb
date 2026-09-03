class Ctread < Formula
  desc "Simple command-line ebook reader"
  homepage "https://github.com/Hollowzzzy/CTread"
  url "https://github.com/Hollowzzzy/CTread/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ad3574a5ec6ec899a8b7aa142b9743674b0cb5ffcec375687e4c492ee92960b7"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system bin/"ctread", "--help"
  end
end
