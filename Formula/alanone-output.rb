require "language/node"

class AlanoneOutput < Formula
	desc "The CLI that interfaces with the Alan One computer"
	homepage "https://www.npmjs.com/package/@turingguild/alanone-output"
	url "https://registry.npmjs.org/@turingguild/alanone-output/-/alanone-output-1.0.5.tgz"
	sha256 "31ee323ac70c1ba9f2237a5461f121bbf1cd09633783524bc1162b61c16336b5"
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