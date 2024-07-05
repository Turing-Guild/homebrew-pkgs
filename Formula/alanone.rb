require "language/node"

class Alanone < Formula
	desc "The CLI that interfaces with the Alan One computer"
	homepage "https://www.npmjs.com/package/@turingguild/alanone"
	url "https://registry.npmjs.org/@turingguild/alanone/-/alanone-1.1.6.tgz"
	sha256 "22fad2ce6207a19cbdcef7096336fabb61ed29e41a7d735d1dcfcd4f793efd0b"
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