class ScanAzure < Formula
  desc "Azure security scanner"
  homepage "https://github.com/tailsec-com/scan-azure"
  url "https://registry.npmjs.org/@tailsec/scan-azure/-/scan-azure-0.1.0.tgz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  license "MIT"
  version "0.1.0"

  depends_on "node"

  def install
    npm.opt_prefix = Formula["node"].opt_prefix
    system "npm", "install", "-g", "@tailsec/scan-azure"
    bin.install_symlink "#{npm_prefix}/lib/node_modules/@tailsec/scan-azure/bin/scan-azure.js"
  end

  test do
    system "node", "-e", "require('@tailsec/scan-azure')"
  end
end
