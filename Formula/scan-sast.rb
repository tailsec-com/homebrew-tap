class ScanSast < Formula
  desc "Advanced SAST scanner"
  homepage "https://github.com/tailsec-com/scan-sast"
  url "https://registry.npmjs.org/@tailsec/scan-sast/-/scan-sast-0.1.0.tgz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  license "MIT"
  version "0.1.0"

  depends_on "node"

  def install
    npm.opt_prefix = Formula["node"].opt_prefix
    system "npm", "install", "-g", "@tailsec/scan-sast"
    bin.install_symlink "#{npm_prefix}/lib/node_modules/@tailsec/scan-sast/bin/scan-sast.js"
  end

  test do
    system "node", "-e", "require('@tailsec/scan-sast')"
  end
end
