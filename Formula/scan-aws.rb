class ScanAws < Formula
  desc "AWS security scanner"
  homepage "https://github.com/tailsec-com/scan-aws"
  url "https://registry.npmjs.org/@tailsec/scan-aws/-/scan-aws-0.1.0.tgz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  license "MIT"
  version "0.1.0"

  depends_on "node"

  def install
    npm.opt_prefix = Formula["node"].opt_prefix
    system "npm", "install", "-g", "@tailsec/scan-aws"
    bin.install_symlink "#{npm_prefix}/lib/node_modules/@tailsec/scan-aws/bin/scan-aws.js"
  end

  test do
    system "node", "-e", "require('@tailsec/scan-aws')"
  end
end
