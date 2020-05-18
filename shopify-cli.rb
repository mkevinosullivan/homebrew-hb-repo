# from https://tech.cars.com/distributing-your-home-grown-tools-to-the-masses-with-homebrew-acb7a62518a8

class ShopifyCli < Formula
  desc "Shopify App CLI helps you build Shopify apps faster"
  homepage "https://github.com/mkevinosullivan/shopify-app-cli"
  url "https://github.com/mkevinosullivan/shopify-app-cli/blob/convert_to_gem/archive/shopify-cli-0.0.2.tar.gz"
  sha256 "19913cf549228979459428e442dbd340ae58d99eb0de93eca705f1e89d2097b6"
  version "0.0.2"

  depends_on "ruby"

  bottle :unneeded

  def install
    system('gem', 'install', 'shopify-app-cli')
    # libexec.install Dir["*"]
    # bin.write_exec_script (libexec/"shopify-cli")
  end
end