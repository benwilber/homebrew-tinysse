class TinysseBin < Formula
    desc "A programmable server for Server-Sent Events (SSE)."
    homepage "https://tinysse.com"
    version "0.7.0"

    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/benwilber/tinysse/releases/download/v#{version}/macos-x86_64.tar.gz"
        sha256 "61024c4bdb7c90b5f29396c0a59725b90317744b451035cb7e9a4281d6a08ee3"

        def install
            bin.install "tinysse"
        end
      end

      if Hardware::CPU.arm?
        url "https://github.com/benwilber/tinysse/releases/download/v#{version}/macos-aarch64.tar.gz"
        sha256 "e1ba03cb382ceb4da74f972e6c61763dbf9df4d14285746e98f54325cf42d1df"

        def install
            bin.install "tinysse"
        end
      end
    end
end
