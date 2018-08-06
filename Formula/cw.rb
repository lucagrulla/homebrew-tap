class Cw < Formula
  desc "The best way to tail AWS Cloudwatch Logs from your terminal"
  homepage "https://www.lucagrulla.com/cw"
  url "https://github.com/lucagrulla/cw/releases/download/1.5.2/cw_1.5.2_Darwin_x86_64.tar.gz"
  version "1.5.2"
  sha256 "7507766db567658ae3e84aae282f02bff227eb377a64ee15cc0e49c3c14cf94b"

  def install
    bin.install "cw"
    
    system bin/"cw --completion-script-bash > cw.bash"
    system bin/"cw completion zsh > cw.zsh"
    
    bash_completion.install "cw.bash"
    zsh_completion.install "cw.zsh"
  end

  def caveats; <<~EOS
    In order to get cw completion, [bash] you need to install `bash-completion` with brew. OR [zsh], add the following line to your ~/.zshrc: source #{HOMEBREW_PREFIX}/share/zsh/site-functions/cw
  EOS
  end
end
