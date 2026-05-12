class ScanKustomize < Formula
  desc "Kustomize overlay security scanner"
  homepage "https://github.com/tailsec-com/scan-kustomize"
  url "https://registry.npmjs.org/@tailsec/scan-kustomize/-/scan-kustomize-0.1.0.tgz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  license "MIT"
  version "0.1.0"

  depends_on "node"

  def install
    npm.opt_prefix = Formula["node"].opt_prefix
    system "npm", "install", "-g", "@tailsec/scan-kustomize"
    bin.install_symlink "#{npm_prefix}/lib/node_modules/@tailsec/scan-kustomize/bin/scan-kustomize.js"
  end

  test do
    system "node", "-e", "require('@tailsec/scan-kustomize')"
  end
end
