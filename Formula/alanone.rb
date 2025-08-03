require "language/node"

class Alanone < Formula
	desc "The CLI that interfaces with the Alan One computer"
	homepage "https://www.npmjs.com/package/@turingguild/alanone"
  url "https://registry.npmjs.org/@turingguild/alanone/-/alanone-1.4.1.tgz"
  sha256 "142a2b7feaae1d4c269910b02102ee3497862d52b534e479b7378a5f77f83f9c"
	license "ISC" # or the appropriate license
  
	depends_on "node"
  uses_from_macos "ruby"
  
	def install
		system "npm", "install", *Language::Node.std_npm_install_args(libexec)
		bin.install_symlink Dir["#{libexec}/bin/*"]
	end
  
	test do
		system "#{bin}/alanone"
	end
end
