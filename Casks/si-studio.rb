# Written by simple-ideas' packaging/homebrew.sh on every release; do not edit.
cask "si-studio" do
  version "4.5.0"
  sha256 "121c0a7e8af0ee859d75ae58f6c51d69b5db7b5ee371674ac422802c1e796269"

  url "https://github.com/felipeg48/simple-ideas/releases/download/v#{version}/si-Studio-#{version}-macos.zip"
  name "si Studio"
  desc "Editor for si decks, articles, guides and mind maps"
  homepage "https://github.com/felipeg48/simple-ideas"

  depends_on macos: ">= :ventura"

  app "si Studio.app"

  caveats <<~EOS
    si Studio is self-signed, not notarised by Apple yet. If macOS says it
    cannot be opened, run once:
      xattr -dr com.apple.quarantine "/Applications/si Studio.app"
  EOS
end
