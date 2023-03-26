class Cedru < Formula
  desc "命令行数字排序工具"
  homepage "https://github.com/solidSpoon/cedru"
  url "https://github.com/myuser/cedru/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "下载文件的 SHA256 值"
  license "你的开源许可证"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "cedru", "--locked"
    bin.install "target/release/cedru"
  end

  test do
    system "#{bin}/cedru", "--version"
  end
end
