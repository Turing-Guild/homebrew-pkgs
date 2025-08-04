require "language/node"

class Alanone < Formula
  desc "The CLI that interfaces with the Alan One computer"
  homepage "https://www.npmjs.com/package/@turingguild/alanone"
  url "https://registry.npmjs.org/@turingguild/alanone/-/alanone-1.4.5.tgz"
  sha256 "8046bb5f77c641f96c963fa43553dbca337892ba368cc0f4acaf99f2f74d4f0a"
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

