class ScanK8s < Formula
  desc "Kubernetes security scanner"
  homepage "https://github.com/tailsec-com/scan-k8s"
  url "https://registry.npmjs.org/@tailsec/scan-k8s/-/scan-k8s-0.1.0.tgz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  license "MIT"
  version "0.1.0"

  depends_on "node"

  def install
    npm.opt_prefix = Formula["node"].opt_prefix
    system "npm", "install", "-g", "@tailsec/scan-k8s"
    bin.install_symlink "#{npm_prefix}/lib/node_modules/@tailsec/scan-k8s/bin/scan-k8s.js"
  end

  test do
    system "node", "-e", "require('@tailsec/scan-k8s')"
  end
end
