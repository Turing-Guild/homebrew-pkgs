class Alanone < Formula
  desc "The CLI that interfaces with the Alan One computer"
  homepage "https://www.npmjs.com/package/@turingguild/alanone"
  url "https://registry.npmjs.org/@turingguild/alanone/-/alanone-1.4.1.tgz"
  version "1.4.1"
  license "ISC"

  depends_on "node"

  def install
    system "npm", "install", "-g", "@turingguild/alanone@#{version}"
    bin.install_symlink Dir[HOMEBREW_PREFIX/"lib/node_modules/@turingguild/alanone/bin/*"]
  end

  test do
    system "#{bin}/alanone", "--version"
  end
end

