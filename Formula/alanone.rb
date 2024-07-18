require "language/node"

class Alanone < Formula
	desc "The CLI that interfaces with the Alan One computer"
	homepage "https://www.npmjs.com/package/@turingguild/alanone"
	url "https://registry.npmjs.org/@turingguild/alanone/-/alanone-1.1.12.tgz"
	sha256 "b6fa9627f245bb6dc315516681844b34965b20894575c752e194085763ee33ea"
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
