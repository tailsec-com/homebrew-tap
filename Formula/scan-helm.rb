class ScanHelm < Formula
  desc "Helm chart security scanner"
  homepage "https://github.com/tailsec-com/scan-helm"
  url "https://registry.npmjs.org/@tailsec/scan-helm/-/scan-helm-0.1.0.tgz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  license "MIT"
  version "0.1.0"

  depends_on "node"

  def install
    npm.opt_prefix = Formula["node"].opt_prefix
    system "npm", "install", "-g", "@tailsec/scan-helm"
    bin.install_symlink "#{npm_prefix}/lib/node_modules/@tailsec/scan-helm/bin/scan-helm.js"
  end

  test do
    system "node", "-e", "require('@tailsec/scan-helm')"
  end
end
