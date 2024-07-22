require "language/node"

class Alanone < Formula
	desc "The CLI that interfaces with the Alan One computer"
	homepage "https://www.npmjs.com/package/@turingguild/alanone"
	url "https://registry.npmjs.org/@turingguild/alanone/-/alanone-1.1.13.tgz"
	sha256 "1e2d2b2341432592d2e5ed2bed798f1e31328d443c95e1bfc9d63f6bf6735d9f"
	license "ISC" # or the appropriate license
  
	depends_on "node"
  
	def install
		system "npm", "install", *Language::Node.std_npm_install_args(libexec)
		bin.install_symlink Dir["#{libexec}/bin/*"]
	end
  
	test do
		system "#{bin}/alanone"
	end
end
