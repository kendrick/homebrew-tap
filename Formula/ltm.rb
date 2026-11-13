class Ltm < Formula
  desc "Org-level memory for coding agents: query a Bank, hydrate Proposals, and promote decisions"
  homepage "https://github.com/kendrick/long-term-memory-kit"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kendrick/long-term-memory-kit/releases/download/v0.3.0/ltm-darwin-arm64"
      sha256 "58a8b3672ddf5a1a0d4503e4b376e0bd268bd8b9bdab7448fdecd160917c9ca1"
    end
    on_intel do
      url "https://github.com/kendrick/long-term-memory-kit/releases/download/v0.3.0/ltm-darwin-x64"
      sha256 "1fda0e7321e957edfd4cb5358fbf1198961c6e473a6e5a091efaccb57f42b6da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kendrick/long-term-memory-kit/releases/download/v0.3.0/ltm-linux-arm64"
      sha256 "b8b13c3cf42a69a5a687bb35dd8c47000e7e69bc780245c01f949d0ab7622b9f"
    end
    on_intel do
      url "https://github.com/kendrick/long-term-memory-kit/releases/download/v0.3.0/ltm-linux-x64"
      sha256 "11918f51034829cfc76f9400b784b83bed0df79bbf51d461756e2064d5d40727"
    end
  end

  def install
    bin.install Dir["ltm-*"].first => "ltm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ltm --version")
  end
end
