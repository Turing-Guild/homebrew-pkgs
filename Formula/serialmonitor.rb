require "language/node"

class SerialMonitor < Formula
	desc "Generic serialmonitor for reading and write to a serial port"
	homepage "https://www.npmjs.com/package/@turingguild/serialmonitor"
  url "https://registry.npmjs.org/@turingguild/alanone/-/serialmonitor-1.0.0.tgz"
	sha256 "65fa474597d1325fffff7bdc3be9ff6c257bf5114d8a90f4e1ce91051fe6c7fe"
	license "ISC" # or the appropriate license
  
	depends_on "node"
  
	def install
		system "npm", "install", *Language::Node.std_npm_install_args(libexec)
		bin.install_symlink Dir["#{libexec}/bin/*"]
	end
  
	test do
		system "#{bin}/serialmonitor"
	end
end
