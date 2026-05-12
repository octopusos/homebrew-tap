class Octoryn < Formula
  desc "Octoryn LLM official command-line interface"
  homepage "https://octopusos.dev"
  version "2.0.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v2.0.4/octoryn-darwin-arm64"
      sha256 "ab3eefc9a87b76664dcc2b56721de6e8a89a8db63da43b4461472e3eb2843b2f"
    end
    on_intel do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v2.0.4/octoryn-darwin-x64"
      sha256 "8460cb2573f8fdceeb8eae8d8c7ab619de525fac0127e35e2eed21c6e9385579"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v2.0.4/octoryn-linux-arm64"
      sha256 "f1b74227c89cbc91f7ebb84961d9ce7b5c8afed0a8c6e765bcb9cd3df39399f2"
    end
    on_intel do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v2.0.4/octoryn-linux-x64"
      sha256 "65701c7dd19bc0284281db320076cef4f952b093434cf13462eeea08e68d6d27"
    end
  end

  def install
    bin.install Dir["octoryn-*"].first => "octoryn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octoryn --version")
  end
end
