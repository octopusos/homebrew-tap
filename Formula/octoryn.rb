class Octoryn < Formula
  desc "Octoryn LLM official command-line interface"
  homepage "https://octopusos.dev"
  version "0.1.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v0.1.3/octoryn-darwin-arm64"
      sha256 "0d9dd6b1aeee1afb84464ce1aa7d18e4524e5b76d191d7b53d871ef5cef21d81"
    end
    on_intel do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v0.1.3/octoryn-darwin-x64"
      sha256 "a967c73d1c33b447a69f470fd8006584432046f40f07e51eba206c3ce79af2fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v0.1.3/octoryn-linux-arm64"
      sha256 "ded5481b3b4dd122fc881727b2fdd7a3f2fb8a14e0b98e8eafaa6665b4738a1c"
    end
    on_intel do
      url "https://github.com/octopusos/octoryn-cli-bin/releases/download/cli-v0.1.3/octoryn-linux-x64"
      sha256 "be89ac41bec4da7ab6a6f83eca1b0929c6445ffeb9535563b3375e9e1a101ae5"
    end
  end

  def install
    bin.install Dir["octoryn-*"].first => "octoryn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/octoryn --version")
  end
end
