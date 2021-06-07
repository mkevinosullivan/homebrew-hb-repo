class ShopifyCli < Formula
  # version '1.12.0'
  version '2.0.0.beta.3'
  homepage 'https://shopify.github.io/shopify-app-cli'
  url "file:///tmp/shopify-cli-test/shopify-cli-#{version}.gem"
  # sha256 '6e5e065ce51c56124e758d57a2b3c7aa746ac9ab86e2be459e0c91f8ead0ea70'
  sha256 '85629b0a16dde09ab6fc75f8ada5c4e25158e23bb31302a84383dbf67e5c5266'
  desc <<~DESC
    Shopify CLI helps you build Shopify apps faster. It quickly scaffolds Node.js
    and Ruby on Rails embedded apps. It also automates many common tasks in the
    development process and lets you quickly add popular features, such as billing
    and webhooks.
  DESC

  bottle :unneeded

  depends_on 'git' => '2.13'

  def install
    system 'tar', '-xf', cached_download, '--directory', buildpath

    (buildpath/'src').mkpath
    (buildpath/'symlink').mkpath
    system 'tar', '-xzf', buildpath/'data.tar.gz', '--directory', buildpath/'src'

    prefix.install buildpath/'src'

    exe = prefix/'src/bin/shopify'
    script = buildpath/'symlink/shopify'

    script_content = <<~SCRIPT
      #!/usr/bin/env bash
      #{RbConfig.ruby} --disable=gems -I #{prefix} #{exe} $@
    SCRIPT

    File.write(script, script_content)
    FileUtils.chmod("+x", script)

    bin.install script
  end
end
