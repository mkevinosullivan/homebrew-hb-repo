# from https://tech.cars.com/distributing-your-home-grown-tools-to-the-masses-with-homebrew-acb7a62518a8

class Weather < Formula
  desc "A command line tool to retrieve local weather"
  homepage "https://github.com/mkevinosullivan/weather"
  url "https://github.com/mkevinosullivan/weather/raw/master/archive/weather-1.0.0.tar.gz"
  sha256 "a62364a0b131c9e4d6bf79d054cbcb47490518f11df7fece94602591617291e7"
  version "0.0.1"

  depends_on "curl"

  bottle :unneeded

  def install
    bin.install "weather"
  end
end