class Cw < Formula
  desc "The best way to tail AWS Cloudwatch Logs from your terminal"
  homepage "https://www.lucagrulla.com/cw"
  url "https://github.com/lucagrulla/cw/releases/download/v3.1.0/cw_3.1.0_Darwin_x86_64.tar.gz"
  version "3.1.0"
  sha256 "7e84325326335dd036e95d875a53cc402802bae8336b4b0779c9a5d809c70ea4"

  def install
    bin.install "cw"
    
    system bin/"cw --completion-script-bash > cw.bash"
    bash_completion.install "cw.bash"
    
    system bin/"cw --help-man > cw.1"
    man1.install "cw.1"
    
    # system bin/"cw completion zsh > cw.zsh"
    # zsh_completion.install "cw.zsh"
  end

  def caveats; <<~EOS
    In order to get cw completion, [bash] you need to install `bash-completion` with brew. OR [zsh], add the following line to your ~/.zshrc: source #{HOMEBREW_PREFIX}/share/zsh/site-functions/cw
  EOS
  end
end
