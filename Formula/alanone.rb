require "language/node"

class Alanone < Formula
	desc "The CLI that interfaces with the Alan One computer"
	homepage "https://www.npmjs.com/package/@turingguild/alanone"
	url "https://registry.npmjs.org/@turingguild/alanone/-/alanone-1.1.9.tgz"
	sha256 "f51420aaea999a95e2c72465aa8b05e421aa88bfc61ef65a627a2f408dd1d0a5"
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
