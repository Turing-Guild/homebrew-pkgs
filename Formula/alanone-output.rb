require "language/node"

class AlanoneOutput < Formula
	desc "An output monitor for the Alan One CLI"
	homepage "https://www.npmjs.com/package/@turingguild/alanone-output"
	url "https://registry.npmjs.org/@turingguild/alanone-output/-/alanone-output-1.0.10.tgz"
	sha256 "1a9168e801991c292626208f306593b55c7a3a707d8580bec4516b2b78dfdc18"
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
