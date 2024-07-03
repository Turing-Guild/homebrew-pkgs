require "language/node"

class AlanoneOutput < Formula
	desc "The CLI that interfaces with the Alan One computer"
	homepage "https://github.com/turing-guild/alanone-output"
	url "https://registry.npmjs.org/@turingguild/alanone-output/-/alanone-output-1.0.4.tgz"
	sha256 "148e580e4ed5e612d0c8e726207c5cb49979493b05e80fac3de36b5419d14435"
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