class Cedru < Formula
  desc "命令行数字排序工具"
  homepage "https://github.com/solidSpoon/cedru"
  url "https://github.com/solidSpoon/cedru/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0ef02a08c6b1cf14b59790740f9707e2a12978c22f6ed2fc852e30070eef087c"
  license "Apache License 2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "cedru", "--locked"
    bin.install "target/release/cedru"
  end

  test do
    system "#{bin}/cedru", "--version"
  end
end
