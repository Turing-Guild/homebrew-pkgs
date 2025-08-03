require "language/node"

class Alanone < Formula
  desc "The CLI that interfaces with the Alan One computer"
  homepage "https://www.npmjs.com/package/@turingguild/alanone"
  url "https://registry.npmjs.org/@turingguild/alanone/-/alanone-1.4.1.tgz"
  sha256 "142a2b7feaae1d4c269910b02102ee3497862d52b534e479b7378a5f77f83f9c"
  license "ISC"

  depends_on "node"

  # Tell Homebrew explicitly: we don't need a compiler
  def install
    ENV["HOMEBREW_NO_COMPILER_CHECK"] = "1"
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/alanone", "--version"
  end
end
