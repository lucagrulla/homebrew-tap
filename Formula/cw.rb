class Cw < Formula
  version = "0.1.1"
  
  desc "Cloudwatch CLI Tool"
  homepage "https://github.com/lucagrulla/cw"
  url "https://github.com/lucagrulla/cw.git",
        :tag => version
  head "https://github.com/lucagrulla/cw.git"

  depends_on "go" => :build
  
  bottle do
    root_url "https://github.com/lucagrulla/homebrew-cw/releases/download/#{version}"
    cellar :any_skip_relocation
    sha256 "aa04be3c9e28a592bfbe99a1d5332d0e93343b5e" => :sierra
  end

  def install
    ENV["GOPATH"] = buildpath
    arch = MacOS.prefer_64_bit? ? "amd64" : "x86"
    dir = buildpath/"src/github.com/lucagrulla/cw"
    dir.install buildpath.children - [buildpath/".brew_home"]

    cd dir do
      # Make binary
      system "go", "build", "-o", "cw"
      bin.install "cw"

      # Install bash completion
      output = Utils.popen_read("#{bin}/awless completion bash")
      (bash_completion/"awless").write output
      
      # Install zsh completion
      output = Utils.popen_read("#{bin}/awless completion zsh")
      (zsh_completion/"_awless").write output
    end
  end
  
  def caveats
      <<-EOS.undent
      
      In order to get awless completion, 
        [bash] you need to install `bash-completion` with brew.
        OR
        [zsh], add the following line to your ~/.zshrc:
          source #{HOMEBREW_PREFIX}/share/zsh/site-functions/_awless
      EOS
  end

  test do
    run_output = shell_output("#{bin}/awless --help 2>&1")
    assert_match "cq is a tool to interact with your CloudWatch log stream from CLI", run_output
  end
end