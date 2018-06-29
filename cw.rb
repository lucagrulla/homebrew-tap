class Cw < Formula
  desc "The best way to tail AWS Cloudwatch Logs from your terminal"
  homepage "https://www.lucagrulla.com/cw"
  url "https://github.com/lucagrulla/cw/releases/download/1.4.0/cw_1.4.0_Darwin_x86_64.tar.gz"
  version "1.4.0"
  sha256 "8f16fed24adc5ff3260ba766d75d232efb9b93f4b2afc82e8a2aede998df26be"

  def install
    bin.install "cw"
  end

  def caveats; <<~EOS
    In order to get cw completion, [bash] you need to install `bash-completion` with brew. OR [zsh], add the following line to your ~/.zshrc: source #{HOMEBREW_PREFIX}/share/zsh/site-functions/cw
  EOS
  end
end
