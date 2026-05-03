class Octoryn < Formula
  desc "Octoryn LLM official command-line interface"
  homepage "https://octopusos.dev"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v0.1.0/octoryn-darwin-arm64"
      sha256 "55cf92ad6bb21a3d195328f2de86af330e9b0996ab062186f6dbcfe6822e1cb5"
    end
    on_intel do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v0.1.0/octoryn-darwin-x64"
      sha256 "82856471edb00cbe9a4e9dadd60ec2ed32d267c582f355257502938bb6acfc38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v0.1.0/octoryn-linux-arm64"
      sha256 "b0e4f6dd20b4790cf2bd6768a63681b2aee18ba1e21354fd4711f506db8ee258"
    end
    on_intel do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v0.1.0/octoryn-linux-x64"
      sha256 "28d8f1ca923e7191f0b0c59fc72f920244f27817d85b2af72d0deb1a6fd141d6"
    end
  end

  def install
    bin.install Dir["octoryn-*"].first => "octoryn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octoryn --version")
  end
end
