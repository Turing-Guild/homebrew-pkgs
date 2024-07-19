require "language/node"

class AlanoneOutput < Formula
	desc "An output monitor for the Alan One CLI"
	homepage "https://www.npmjs.com/package/@turingguild/alanone-output"
	url "https://registry.npmjs.org/@turingguild/alanone-output/-/alanone-output-1.0.9.tgz"
	sha256 "e0d4a2cf9d6afc3ea0de3dfe3245af3e94e8afc6589e2006e8d9eb7792888a98"
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
