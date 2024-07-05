require "language/node"

class AlanoneOutput < Formula
	desc "The CLI that interfaces with the Alan One computer"
	homepage "https://www.npmjs.com/package/@turingguild/alanone-output"
	url "https://registry.npmjs.org/@turingguild/alanone-output/-/alanone-output-1.0.6.tgz"
	sha256 "34cc72f1b4d023d032505f97eb3b6e259b2cbb9d195fccaee64aeb84b5437f3c"
	license "ISC" # or the appropriate license
  
	depends_on "node"
  
	def install
		system "npm", "install", *Language::Node.std_npm_install_args(libexec)
		bin.install_symlink Dir["#{libexec}/bin/*"]
	end
  
	test do
		system "#{bin}/alanone-output"
	end
end