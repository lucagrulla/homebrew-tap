class Cw < Formula
  desc "The best way to tail AWS Cloudwatch Logs from your terminal"
  homepage "https://www.lucagrulla.com/cw"
  url "https://github.com/lucagrulla/cw/releases/download/1.5.1/cw_1.5.1_Darwin_x86_64.tar.gz"
  version "1.5.1"
  sha256 "427a48ad345a9f7f13aec377c07618a94a354fbf1d2288342ffa41a60d41df71"

  def install
    bin.install "cw"
  end

  def caveats; <<~EOS
    In order to get cw completion, [bash] you need to install `bash-completion` with brew. OR [zsh], add the following line to your ~/.zshrc: source #{HOMEBREW_PREFIX}/share/zsh/site-functions/cw
  EOS
  end
end
