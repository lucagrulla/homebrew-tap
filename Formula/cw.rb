class Cw < Formula
  desc "The best way to tail AWS Cloudwatch Logs from your terminal"
  homepage "https://www.lucagrulla.com/cw"
  url "https://github.com/lucagrulla/cw/releases/download/v1.7.2/cw_1.7.2_Darwin_x86_64.tar.gz"
  version "1.7.2"
  sha256 "e27dcbb0c41fcc1812fa37bab1b63a79a769289cbae4a15d0e50f647e69aa876"

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
