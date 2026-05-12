class ScanSecrets < Formula
  desc "Secret detection scanner"
  homepage "https://github.com/tailsec-com/scan-secrets"
  url "https://registry.npmjs.org/@tailsec/scan-secrets/-/scan-secrets-0.1.0.tgz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  license "MIT"
  version "0.1.0"

  depends_on "node"

  def install
    npm.opt_prefix = Formula["node"].opt_prefix
    system "npm", "install", "-g", "@tailsec/scan-secrets"
    bin.install_symlink "#{npm_prefix}/lib/node_modules/@tailsec/scan-secrets/bin/scan-secrets.js"
  end

  test do
    system "node", "-e", "require('@tailsec/scan-secrets')"
  end
end
