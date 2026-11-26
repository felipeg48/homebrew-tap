# Written by simple-ideas' packaging/homebrew.sh on every release; do not edit.
class Si < Formula
  desc "Markdown into animated, fluid HTML slide decks, articles, guides and mind maps"
  homepage "https://github.com/felipeg48/simple-ideas"
  version "4.5.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/felipeg48/simple-ideas/releases/download/v4.5.1/si_v4.5.1_darwin_arm64"
      sha256 "9246fbe6ac23d65b628294608e5d7e6c45551d84b76b79f1e6105de2e625fb28"
    end
    on_intel do
      url "https://github.com/felipeg48/simple-ideas/releases/download/v4.5.1/si_v4.5.1_darwin_amd64"
      sha256 "0b9f861b93b33bc7ba5afccc3f0cf5b7ee4414cfa1867c0892df478f5b46f009"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/felipeg48/simple-ideas/releases/download/v4.5.1/si_v4.5.1_linux_arm64"
      sha256 "398e963f730b75704ce74f96fde5572ae2a0bbd62f65afb14d99826e3cd7f0eb"
    end
    on_intel do
      url "https://github.com/felipeg48/simple-ideas/releases/download/v4.5.1/si_v4.5.1_linux_amd64"
      sha256 "f29dadf5fb1d9e3fb87c3916071711ae04fee1a19097b0aeeb6a458ecf931969"
    end
  end

  def install
    bin.install Dir["si_v*"].first => "si"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/si --version")
  end
end
