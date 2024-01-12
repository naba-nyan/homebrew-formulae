class HtopVim < Formula
  desc "htop with vim keybindings"
  homepage "https://github.com/KoffeinFlummi/htop-vim"
  url "https://github.com/KoffeinFlummi/htop-vim/archive/refs/tags/3.0.3vim.tar.gz"
  sha256 "c895ae71529f35ea3744f1027a37950bfe4da95d5b013d135a1713ca22adcaa2"
  license "GPL-2.0"
  head "https://github.com/KoffeinFlummi/htop-vim.git"
  conflicts_with "htop"

  depends_on "automake" => :build
  depends_on "autoconf" => :build
  depends_on "gcc" => :build
  depends_on "ncurses" => :build

  def install
    system "./autogen.sh"
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  def caveats
    <<~EOS
      htop-vim requires root privileges to display all running processes,
      so you will need to run `sudo htop`.
    EOS
  end
end
