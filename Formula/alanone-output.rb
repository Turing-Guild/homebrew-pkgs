require "language/node"

class AlanoneOutput < Formula
	desc "The CLI that interfaces with the Alan One computer."
	homepage "https://github.com/turing-guild/alanone"
	version "1.0.0"
	url "https://registry.npmjs.org/@turingguild/alanone-output/-/alanone-output-1.0.0.tgz"
	sha256 "b8a3ebe8337edca9e5fdbe7a0ea5dfb5f3c58e558a319ab056d74869c1c174f7"
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