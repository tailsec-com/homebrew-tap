class ScanDeps < Formula
  desc "Dependency vulnerability scanner"
  homepage "https://github.com/tailsec-com/scan-deps"
  url "https://registry.npmjs.org/@tailsec/scan-deps/-/scan-deps-0.1.0.tgz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  license "MIT"
  version "0.1.0"

  depends_on "node"

  def install
    npm.opt_prefix = Formula["node"].opt_prefix
    system "npm", "install", "-g", "@tailsec/scan-deps"
    bin.install_symlink "#{npm_prefix}/lib/node_modules/@tailsec/scan-deps/bin/scan-deps.js"
  end

  test do
    system "node", "-e", "require('@tailsec/scan-deps')"
  end
end
