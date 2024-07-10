require "language/node"

class AlanoneOutput < Formula
	desc "An output monitor for the Alan One CLI"
	homepage "https://www.npmjs.com/package/@turingguild/alanone-output"
	url "https://registry.npmjs.org/@turingguild/alanone-output/-/alanone-output-1.0.8.tgz"
	sha256 "ffff4a55c877fa0340121223160f4312dd220a171688c2a04c424aadd3bc5440"
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
