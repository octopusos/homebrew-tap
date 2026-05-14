class Octoryn < Formula
  desc "Octoryn LLM official command-line interface"
  homepage "https://octopusos.dev"
  version "2.0.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v2.0.5/octoryn-darwin-arm64"
      sha256 "5b3d454b93f2ec3f470f26794f91fecc13d0a34059cb90ef01b557f7c19aebff"
    end
    on_intel do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v2.0.5/octoryn-darwin-x64"
      sha256 "28d4eb18b318f70dd98adae02ff3728b5598bd86662b24b60c07fe73c87a9e0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v2.0.5/octoryn-linux-arm64"
      sha256 "1c00db12a160b23024f40dcf168d222ea3928d4d31ababb4ba28e436e27215b3"
    end
    on_intel do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v2.0.5/octoryn-linux-x64"
      sha256 "2a12b2cdd7c9d7a7564b045129e2dd8bd74801a9b38747209975e1baf937dd95"
    end
  end

  def install
    bin.install Dir["octoryn-*"].first => "octoryn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octoryn --version")
  end
end
