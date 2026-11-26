# Written by simple-ideas' packaging/homebrew.sh on every release; do not edit.
class Si < Formula
  desc "Markdown into animated, fluid HTML slide decks, articles, guides and mind maps"
  homepage "https://github.com/felipeg48/simple-ideas"
  version "4.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/felipeg48/simple-ideas/releases/download/v4.5.0/si_v4.5.0_darwin_arm64"
      sha256 "c49bfd5dabc0eced09426156dc0b5acbbc5e24a2d333702f237341ba5b054956"
    end
    on_intel do
      url "https://github.com/felipeg48/simple-ideas/releases/download/v4.5.0/si_v4.5.0_darwin_amd64"
      sha256 "5e0e7413899f19f15fefddb6ff6024c910d93f6f3001d1674c92fc75bb238b3e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/felipeg48/simple-ideas/releases/download/v4.5.0/si_v4.5.0_linux_arm64"
      sha256 "d92e5d668a31cdd37b911279fa80e4f47aeda871d64e813536d6daa941b1e43d"
    end
    on_intel do
      url "https://github.com/felipeg48/simple-ideas/releases/download/v4.5.0/si_v4.5.0_linux_amd64"
      sha256 "6abe4a2a7eeee380b66f49cbca20353ef7fbdd8e358042ab394fe4caa724ea9c"
    end
  end

  def install
    bin.install Dir["si_v*"].first => "si"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/si --version")
  end
end
