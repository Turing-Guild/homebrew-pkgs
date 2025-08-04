require "language/node"

class Alanone < Formula
  desc "The CLI that interfaces with the Alan One computer"
  homepage "https://www.npmjs.com/package/@turingguild/alanone"
  url "https://registry.npmjs.org/@turingguild/alanone/-/alanone-1.4.6.tgz"
  sha256 "e97ede83d615f0a51a7ee3d8e538b504a208440c6bbfacbb71fc8d1afad2b295"
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

