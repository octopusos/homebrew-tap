class Octoryn < Formula
  desc "Retired Octoryn command-line interface"
  homepage "https://octoryn.dev/en/developers/sdks"
  version "2.0.6"
  license :cannot_represent
  disable! date: "2026-08-01", because: "the Octoryn CLI has been retired; use the Octoryn SDKs"

  on_macos do
    on_arm do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v2.0.6/octoryn-darwin-arm64"
      sha256 "867387e4ec59d3dbbc60a2094d691b6bd921088e6f9d74df7feb59030806e048"
    end
    on_intel do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v2.0.6/octoryn-darwin-x64"
      sha256 "3ca55fe1e838f5f02083bd649d5ccfc8b2d4bc04d04a9b0c3e96f4fdb3c3ef73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v2.0.6/octoryn-linux-arm64"
      sha256 "34ea2e885d17bcd8eaa31f08029b95076dc12c3c73f5db760d356c25bc571e32"
    end
    on_intel do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v2.0.6/octoryn-linux-x64"
      sha256 "5fc7da046b8c168864fb9cefd4f7adca65eaba77407ec822a6b37e6ba093af27"
    end
  end

  def install
    bin.install Dir["octoryn-*"].first => "octoryn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octoryn --version")
  end
end
