class TinysseBin < Formula
    desc "A programmable server for Server-Sent Events (SSE)."
    homepage "https://github.com/benwilber/tinysse"
    version "0.4.0"

    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/benwilber/tinysse/releases/download/v#{version}/macos-x86_64.tar.gz"
        sha256 "046b34154389a191d9dc9d06a696bf0c7538c22282fa3bc0df4133b2186e642b"

        def install
            bin.install "tinysse"
        end
      end

      if Hardware::CPU.arm?
        url "https://github.com/benwilber/tinysse/releases/download/v#{version}/macos-aarch64.tar.gz"
        sha256 "3215bce785947f2838936df9b7ff489f8a78a4e72d120c3a6c784c98378485ad"

        def install
            bin.install "tinysse"
        end
      end
    end
end
