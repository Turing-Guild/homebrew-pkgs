require "language/node"

class Alanone < Formula
  desc "The CLI that interfaces with the Alan One computer"
  homepage "https://www.npmjs.com/package/@turingguild/alanone"
  url "https://registry.npmjs.org/@turingguild/alanone/-/alanone-1.4.2.tgz"
  sha256 "26125ab0bbc2695d8a51cf513b9f6dc96488ec0119d69db96a6b27e73b4af832"
  license "ISC"

  depends_on "node"

  def pour_bottle?
    true
  end

  def needs_compiler?
    false
  end

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/alanone", "--version"
  end
end

