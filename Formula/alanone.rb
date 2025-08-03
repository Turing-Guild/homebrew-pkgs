require "language/node"

class Alanone < Formula
  desc "The CLI that interfaces with the Alan One computer"
  homepage "https://www.npmjs.com/package/@turingguild/alanone"
  url "https://registry.npmjs.org/@turingguild/alanone/-/alanone-1.4.3.tgz"
  sha256 "ea71a7cb14422cf4208fa358d245cdb37841f19ca710a1a54add26626f862030"
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

