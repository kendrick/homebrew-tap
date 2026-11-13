class Ltm < Formula
  desc "Org-level memory for coding agents: query a Bank, hydrate Proposals, and promote decisions"
  homepage "https://github.com/kendrick/long-term-memory-kit"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kendrick/long-term-memory-kit/releases/download/v0.2.0/ltm-darwin-arm64"
      sha256 "aca2067059e68bd48fc98284c01138f848c8aad07ff3534162a699615908447c"
    end
    on_intel do
      url "https://github.com/kendrick/long-term-memory-kit/releases/download/v0.2.0/ltm-darwin-x64"
      sha256 "57818371f211df4420629a705a8aacce69ca38e3a9dd5a814c2aa81aa88d586f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kendrick/long-term-memory-kit/releases/download/v0.2.0/ltm-linux-arm64"
      sha256 "43102b5bab3125a0e4e98d8530ddd14323557b66179f44d44b0dd21fe44cb9b7"
    end
    on_intel do
      url "https://github.com/kendrick/long-term-memory-kit/releases/download/v0.2.0/ltm-linux-x64"
      sha256 "b8e45d13926def4bc49c5744132d4ad2bb0bb01123f4cbde00fa52c6bacea640"
    end
  end

  def install
    bin.install Dir["ltm-*"].first => "ltm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ltm --version")
  end
end
