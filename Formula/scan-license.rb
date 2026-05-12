class ScanLicense < Formula
  desc "License compliance scanner"
  homepage "https://github.com/tailsec-com/scan-license"
  url "https://registry.npmjs.org/@tailsec/scan-license/-/scan-license-0.1.0.tgz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  license "MIT"
  version "0.1.0"

  depends_on "node"

  def install
    npm.opt_prefix = Formula["node"].opt_prefix
    system "npm", "install", "-g", "@tailsec/scan-license"
    bin.install_symlink "#{npm_prefix}/lib/node_modules/@tailsec/scan-license/bin/scan-license.js"
  end

  test do
    system "node", "-e", "require('@tailsec/scan-license')"
  end
end
