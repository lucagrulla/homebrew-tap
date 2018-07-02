class Cw < Formula
  desc "The best way to tail AWS Cloudwatch Logs from your terminal"
  homepage "https://www.lucagrulla.com/cw"
  url "https://github.com/lucagrulla/cw/releases/download/1.5.0/cw_1.5.0_Darwin_x86_64.tar.gz"
  version "1.5.0"
  sha256 "81b14a3131be30d82d0b662ed9045531b492f430c4fc3ec23aa977b87eedc444"

  def install
    bin.install "cw"
  end

  def caveats; <<~EOS
    In order to get cw completion, [bash] you need to install `bash-completion` with brew. OR [zsh], add the following line to your ~/.zshrc: source #{HOMEBREW_PREFIX}/share/zsh/site-functions/cw
  EOS
  end
end
