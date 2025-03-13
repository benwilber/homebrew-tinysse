class TinysseBin < Formula
    desc "A programmable server for Server-Sent Events (SSE)."
    homepage "https://github.com/benwilber/tinysse"
    version "0.2.3"

    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/benwilber/tinysse/releases/download/v#{version}/tinysse-macOS-x86_64.tar.gz"
        sha256 "f5dc7fb7d12b7ebe1fc40a1c79a60e92a1b06e125c51478afa68132e6fbec0e2"

        def install
            bin.install "tinysse"
        end
      end

      if Hardware::CPU.arm?
        url "https://github.com/benwilber/tinysse/releases/download/v#{version}/tinysse-macOS-arm64.tar.gz"
        sha256 "214417a580bba178917d1ea438861fd1230aed3b719d1b1d35adce901bf59dc1"

        def install
            bin.install "tinysse"
        end
      end
    end
end
