class Octoryn < Formula
  desc "Octoryn LLM official command-line interface"
  homepage "https://octopusos.dev"
  version "2.0.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v2.0.3/octoryn-darwin-arm64"
      sha256 "8bd68116ceeffe4d54f74d093e7ccf66a804eeccf5b70db284b2f3c0040702ed"
    end
    on_intel do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v2.0.3/octoryn-darwin-x64"
      sha256 "f041d19f5a41994bac23ee07458086dafdd58717f6e11bb0e0d61c9ca0fd293e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v2.0.3/octoryn-linux-arm64"
      sha256 "54307f96a00a190f32207d92c55d65262d8dccd86b2cff27a519cc8c0901a061"
    end
    on_intel do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v2.0.3/octoryn-linux-x64"
      sha256 "cbf44a661371714cdc0d35f78037697ba99b043841147f300abf9380a0176542"
    end
  end

  def install
    bin.install Dir["octoryn-*"].first => "octoryn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octoryn --version")
  end
end
