class ScanDocker < Formula
  desc "Dockerfile security scanner"
  homepage "https://github.com/tailsec-com/scan-docker"
  url "https://registry.npmjs.org/@tailsec/scan-docker/-/scan-docker-0.1.0.tgz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  license "MIT"
  version "0.1.0"

  depends_on "node"

  def install
    npm.opt_prefix = Formula["node"].opt_prefix
    system "npm", "install", "-g", "@tailsec/scan-docker"
    bin.install_symlink "#{npm_prefix}/lib/node_modules/@tailsec/scan-docker/bin/scan-docker.js"
  end

  test do
    system "node", "-e", "require('@tailsec/scan-docker')"
  end
end
