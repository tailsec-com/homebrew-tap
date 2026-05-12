class ScanCode < Formula
  desc "Unified CLI for all Tailsec security scanners"
  homepage "https://github.com/tailsec-com/scan-code"
  url "https://registry.npmjs.org/@tailsec/scan-code/-/scan-code-0.1.0.tgz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  license "MIT"
  version "0.1.0"

  depends_on "node"

  def install
    npm.opt_prefix = Formula["node"].opt_prefix
    system "npm", "install", "-g", "@tailsec/scan-code"
    bin.install_symlink "#{npm_prefix}/lib/node_modules/@tailsec/scan-code/bin/scan-code.js"
  end

  test do
    system "node", "-e", "require('@tailsec/scan-code')"
  end
end
