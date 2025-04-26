class TinysseBin < Formula
    desc "A programmable server for Server-Sent Events (SSE)."
    homepage "https://tinysse.com"
    version "0.7.1"

    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/benwilber/tinysse/releases/download/v#{version}/macos-x86_64.tar.gz"
        sha256 "4288a896a2acd11290bff3bcf82cefa69959d0f8edbd3f7a69c30c6352eac81d"

        def install
            bin.install "tinysse"
        end
      end

      if Hardware::CPU.arm?
        url "https://github.com/benwilber/tinysse/releases/download/v#{version}/macos-aarch64.tar.gz"
        sha256 "2ef4026d8b208566322193fe16e4194e7a280a3be983cc17d60961825ffc6050"

        def install
            bin.install "tinysse"
        end
      end
    end
end
