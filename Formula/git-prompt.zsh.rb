class GitPromptZsh < Formula
  desc "A fast, customizable, pure-shell, asynchronous Git prompt for Zshjj"
  homepage "https://github.com/woefe/git-prompt.zsh"
  url "https://github.com/woefe/git-prompt.zsh/archive/refs/tags/v2.3.0.zip"
  sha256 "b608cd6b66f46f13b17e74e151dafbfd83ce0055d1451b6dbf2aa7a6e66d1b81"
  license "Wolfgang Popp"

  def install
    pkgshare.install Dir["*"]
  end

  def caveats
    <<~EOS
      Make sure git-prompt.zsh is loaded from your .zshrc:
        source "#{HOMEBREW_PREFIX}/share/git-prompt.zsh/git-prompt.zsh"
    EOS
  end
end
