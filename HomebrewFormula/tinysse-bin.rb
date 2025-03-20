class TinysseBin < Formula
    desc "A programmable server for Server-Sent Events (SSE)."
    homepage "https://github.com/benwilber/tinysse"
    version "0.2.0"

    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/benwilber/tinysse/releases/download/v#{version}/macos-x86_64.tar.gz"
        sha256 "6effd0359b37155afe41ca7b663fbdf6c906f7782a49d9afd54ee8d3f856ccec"

        def install
            bin.install "tinysse"
        end
      end

      if Hardware::CPU.arm?
        url "https://github.com/benwilber/tinysse/releases/download/v#{version}/macos-aarch64.tar.gz"
        sha256 "ea3e94f7314e38353aeeee8454872e0c9d56950a56a1de5bf0611dc4c8948c0c"

        def install
            bin.install "tinysse"
        end
      end
    end
end
