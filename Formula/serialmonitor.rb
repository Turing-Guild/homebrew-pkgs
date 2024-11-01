require "language/node"

class Serialmonitor < Formula
	desc "Generic serialmonitor for reading and write to a serial port"
	homepage "https://www.npmjs.com/package/@turingguild/serialmonitor"
  url "https://registry.npmjs.org/@turingguild/serialmonitor/-/serialmonitor-1.0.2.tgz"
	sha256 "628a6ed53a48b0af1493fc9db3e5e488d904d559125732c8c1102762c5cffe2a"
	license "ISC" # or the appropriate license
  
	depends_on "node"
  
	def install
		system "npm", "install", *Language::Node.std_npm_install_args(libexec)
		bin.install_symlink Dir["#{libexec}/bin/*"]
	end
  
	test do
		system "#{bin}/serialmonitor -v"
	end
end
