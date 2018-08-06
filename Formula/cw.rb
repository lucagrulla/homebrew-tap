class Cw < Formula
  desc "The best way to tail AWS Cloudwatch Logs from your terminal"
  homepage "https://www.lucagrulla.com/cw"
  url "https://github.com/lucagrulla/cw/releases/download/1.5.2/cw_1.5.2_Darwin_x86_64.tar.gz"
  version "1.5.2"
  sha256 "c02b1797d51ab18f8743d4da622ef583a054c742b3064c170b0c3cdc498b16b0"

  def install
    bin.install "cw"
    
    system bin/"cw --completion-script-bash > cw.bash"
    bash_completion.install "cw.bash"
    
    # system bin/"cw completion zsh > cw.zsh"
    # zsh_completion.install "cw.zsh"
  end

  def caveats; <<~EOS
    In order to get cw completion, [bash] you need to install `bash-completion` with brew. OR [zsh], add the following line to your ~/.zshrc: source #{HOMEBREW_PREFIX}/share/zsh/site-functions/cw
  EOS
  end
end
