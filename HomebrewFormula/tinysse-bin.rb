class TinysseBin < Formula
    desc "A programmable server for Server-Sent Events (SSE)."
    homepage "https://github.com/benwilber/tinysse"
    version "0.3.1"

    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/benwilber/tinysse/releases/download/v#{version}/macos-x86_64.tar.gz"
        sha256 "a847acf01f690d2dd8f6add1008114e0f6de881904e1efb3ed91b645def5792a"

        def install
            bin.install "tinysse"
        end
      end

      if Hardware::CPU.arm?
        url "https://github.com/benwilber/tinysse/releases/download/v#{version}/macos-aarch64.tar.gz"
        sha256 "5016e122880868f014abbd629b16800b98cd5f49578899295d5c3aebcbf3373c"

        def install
            bin.install "tinysse"
        end
      end
    end
end
