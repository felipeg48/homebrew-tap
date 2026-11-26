# Written by simple-ideas' packaging/homebrew.sh on every release; do not edit.
class Si < Formula
  desc "Markdown into animated, fluid HTML slide decks, articles, guides and mind maps"
  homepage "https://github.com/felipeg48/simple-ideas"
  version "4.4.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/felipeg48/simple-ideas/releases/download/v4.4.4/si_v4.4.4_darwin_arm64"
      sha256 "0819a76178019a5f8f1a8169655b445ea80402ed3b56fa05e75f5bd839a742c9"
    end
    on_intel do
      url "https://github.com/felipeg48/simple-ideas/releases/download/v4.4.4/si_v4.4.4_darwin_amd64"
      sha256 "fbf3707dd9d5511682d167ea3423e163b85e34ce807b68db480fbc5be6386af1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/felipeg48/simple-ideas/releases/download/v4.4.4/si_v4.4.4_linux_arm64"
      sha256 "3df7bc346b5b55d82d986187896462f6d8d7c4a8d8effe8ef841d62097c08c08"
    end
    on_intel do
      url "https://github.com/felipeg48/simple-ideas/releases/download/v4.4.4/si_v4.4.4_linux_amd64"
      sha256 "391d54bd05aa0993c96106849672aaad9dbb6af508e1a462eb35f107a56ad054"
    end
  end

  def install
    bin.install Dir["si_v*"].first => "si"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/si --version")
  end
end
