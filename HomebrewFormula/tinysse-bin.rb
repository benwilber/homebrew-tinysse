class TinysseBin < Formula
    desc "A programmable server for Server-Sent Events (SSE)."
    homepage "https://tinysse.com"
    version "0.7.3"

    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/benwilber/tinysse/releases/download/v#{version}/macos-x86_64.tar.gz"
        sha256 "78a85caf2858b7ca6d1e3520a7d84245159b330c7d86cbdad623498fbccf7c52"

        def install
            bin.install "tinysse"
        end
      end

      if Hardware::CPU.arm?
        url "https://github.com/benwilber/tinysse/releases/download/v#{version}/macos-aarch64.tar.gz"
        sha256 "1b5783f6c8795034202a9810635592cc86e0d67e55d239cfe9c62742011bc967"

        def install
            bin.install "tinysse"
        end
      end
    end
end
