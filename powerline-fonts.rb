class PowerlineFonts < Formula
    desc "Powerline Fonts for MacOS"
    homepage "https://github.com/nitrobytes/homebrew-powerline-fonts"
    sha256 "72861539863233ea0900980051fba5646edcd6718ac1245adc8a2b67bbbeac48"
    url "https://github.com/powerline/fonts.git"
    license "MIT"
    version "0.0.1"
    
    def install
      system "git clone https://github.com/powerline/fonts.git ", "--depth=1"
      system "cd", "fonts"
      system "./install.sh"
      system "cd", ".."
      system "rm -rf fonts"
    end
  
    def uninstall
      system "git clone https://github.com/powerline/fonts.git", "--depth=1"
      system "cd", "fonts"
      system "./uninstall.sh"
      system "cd", ".."
      system "rm -rf fonts"
    end
  end