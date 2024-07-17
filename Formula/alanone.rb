require "language/node"

class Alanone < Formula
	desc "The CLI that interfaces with the Alan One computer"
	homepage "https://www.npmjs.com/package/@turingguild/alanone"
	url "https://registry.npmjs.org/@turingguild/alanone/-/alanone-1.1.11.tgz"
	sha256 "80f3f2862490e6298e356aa38d3f59fde9fde987b9d966b7f675203e7b3dd687"
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
