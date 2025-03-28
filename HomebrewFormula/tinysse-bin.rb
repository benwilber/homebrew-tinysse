class TinysseBin < Formula
    desc "A programmable server for Server-Sent Events (SSE)."
    homepage "https://tinysse.com"
    version "0.6.0"

    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/benwilber/tinysse/releases/download/v#{version}/macos-x86_64.tar.gz"
        sha256 "778380cfe7fb1fa89dfb649799db5ce7681a6dd1dfaee415ddadb0cc6d6e9c5d"

        def install
            bin.install "tinysse"
        end
      end

      if Hardware::CPU.arm?
        url "https://github.com/benwilber/tinysse/releases/download/v#{version}/macos-aarch64.tar.gz"
        sha256 "c8f33e8bb74871f928853fd155884818e723e6def474b0f86dc2c5eb76ab9e70"

        def install
            bin.install "tinysse"
        end
      end
    end
end
