# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class TgVasm < Formula
	desc "TuringGuild VASM - VASM configured for all TuringGuild-related projects"
	homepage "https://github.com/turing-guild/homebrew-pkgs"
	version "1.8f"
	# TODO: use a proxy/hosting service of some sort for this, as the website may go down and some ISPs will flag this
	url "http://www.ibaug.de/vasm/vasm6502.zip"
	sha256 "9a3d707ec5fe9923efb73dfd73c8721fff16ac7e1f49fb509649dcef0fd16c66"

	def install

		os = case RUBY_PLATFORM
			when /darwin/ then "mac"
			when /linux/ then "linux"
			when /mswin|mingw|cygwin/ then "win"
			else raise "Unsupported OS"
		end

		bin.install "#{os}/vasm6502_oldstyle"

		# Install the shell script
		(bin/"tg-vasm").write <<~EOS
			#!/bin/bash
			#{bin}/vasm6502_oldstyle -Fbin -dotdir -c02 "$@" -L "${1%.s}.lst"
		EOS


		# # remove quarantaine flag
		# if RUBY_PLATFORM =~ /darwin/
		# 	system "xattr", "-r", "-d", "com.apple.quarantine", "#{bin}/vasm6502_oldstyle"
		# end

		# Make sure the script is executable
		(bin/"tg-vasm").chmod 0755
	end

	test do
		assert_predicate bin/"tg-vasm", :exist?
		assert_predicate bin/"vasm6502_oldstyle", :exist?
	end
end

