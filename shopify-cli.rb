# from https://tech.cars.com/distributing-your-home-grown-tools-to-the-masses-with-homebrew-acb7a62518a8

class ShopifyCli < Formula
  desc "Shopify App CLI helps you build Shopify apps faster"
  homepage "https://github.com/mkevinosullivan/shopify-app-cli"
  url "https://github.com/mkevinosullivan/shopify-app-cli/blob/convert_to_gem/archive/shopify-cli-0.0.2.tar.gz"
  sha256 "876e087d510a6c238119a5667367b7284aa1070d7df32648b40df9abcfff79e1"
  version "0.0.2"

  depends_on "ruby"

  bottle :unneeded

  def install
    # system('gem', 'install', 'shopify-app-cli')
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"exe/shopify-cli")
  end
end