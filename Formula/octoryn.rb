class Octoryn < Formula
  desc "Octoryn LLM official command-line interface"
  homepage "https://octopusos.dev"
  version "0.1.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v0.1.2/octoryn-darwin-arm64"
      sha256 "e498d01aaa29de77853f29e594225224d4c0bb317ece0a7a5768d6f82bdf8024"
    end
    on_intel do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v0.1.2/octoryn-darwin-x64"
      sha256 "f6bbda0c695babb2ff83451c85e9b4520cd4b4e4d1eef2aa93a45827108be467"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v0.1.2/octoryn-linux-arm64"
      sha256 "53f2dbca22327c0d84014be7e69ac2b81699c6493ce0171a500dc679443fb3b3"
    end
    on_intel do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v0.1.2/octoryn-linux-x64"
      sha256 "86544d503afaf9a00e588832814af445a8399a35f901cfff33a74f89862e2608"
    end
  end

  def install
    bin.install Dir["octoryn-*"].first => "octoryn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octoryn --version")
  end
end
