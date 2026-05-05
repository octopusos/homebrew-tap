class Octoryn < Formula
  desc "Octoryn LLM official command-line interface"
  homepage "https://octopusos.dev"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/authprobe-20260506-01/octoryn-darwin-arm64"
      sha256 "f17348d49a9b71bea26fc50fa56a98b5f6f1adf222bad3992dc5b0c9e4835316"
    end
    on_intel do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/authprobe-20260506-01/octoryn-darwin-x64"
      sha256 "15426d43c8f5195acae3f5ba870efeab47015616d5a16ba6495d633b1674c4f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/authprobe-20260506-01/octoryn-linux-arm64"
      sha256 "ef22360989adde95867c21b2e8c70223e6c77cb792a188173537010fad3cdf00"
    end
    on_intel do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/authprobe-20260506-01/octoryn-linux-x64"
      sha256 "fb0f7ac155c6186343012ea1b3d23ec28cda7a0728439bcd614a9d5e48b609ca"
    end
  end

  def install
    bin.install Dir["octoryn-*"].first => "octoryn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octoryn --version")
  end
end
