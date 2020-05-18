# from https://tech.cars.com/distributing-your-home-grown-tools-to-the-masses-with-homebrew-acb7a62518a8

class ShopifyCli < Formula
  desc "Shopify App CLI helps you build Shopify apps faster"
  homepage "https://github.com/mkevinosullivan/shopify-app-cli"
  url "https://github.com/mkevinosullivan/shopify-app-cli/blob/convert_to_gem/archive/shopify-cli-0.0.2.tar.gz"
  sha256 "056f2c8336a7d1edfc1b1896979f2f99aa1ba6eea13f06339cb9c89a504a8448"
  version "0.0.2"

  depends_on "ruby"

  bottle :unneeded

  def install
    system('gem', 'install', 'shopify-app-cli')
    # libexec.install Dir["*"]
    # bin.write_exec_script (libexec/"shopify-cli")
  end
end