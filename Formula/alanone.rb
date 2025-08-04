require "language/node"

class Alanone < Formula
  desc "The CLI that interfaces with the Alan One computer"
  homepage "https://www.npmjs.com/package/@turingguild/alanone"
  url "https://registry.npmjs.org/@turingguild/alanone/-/alanone-1.4.4.tgz"
  sha256 "b6c14db888ab42d1b61a93b1191fe11773028bdf0d9d595952e9df5d0d9f03d9"
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

