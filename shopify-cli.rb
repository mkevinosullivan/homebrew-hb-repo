# from https://tech.cars.com/distributing-your-home-grown-tools-to-the-masses-with-homebrew-acb7a62518a8

class ShopifyCli < Formula
  desc "Shopify App CLI helps you build Shopify apps faster"
  homepage "https://github.com/mkevinosullivan/shopify-app-cli"
  url "https://github.com/mkevinosullivan/shopify-app-cli/raw/gem_to_brew/archive/shopify-cli-0.0.2.tar.gz"
  sha256 "0e546ba193b9763e59a2ef5d92130baa4bfc4f3aaa1197015718927c3a566544"
  version "0.0.2"

  depends_on "ruby"

  bottle :unneeded

  def install
    # system('gem', 'install', 'shopify-app-cli')
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"exe/shopify-cli")
  end
end