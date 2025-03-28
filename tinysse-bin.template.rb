class TinysseBin < Formula
    desc "A programmable server for Server-Sent Events (SSE)."
    homepage "https://tinysse.com"
    version "{{ ENV.TINYSSE_VERSION }}"

    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/benwilber/tinysse/releases/download/v#{version}/macos-x86_64.tar.gz"
        sha256 "{{ ENV.TINYSSE_MACOS_X86_64_SHA256 }}"

        def install
            bin.install "tinysse"
        end
      end

      if Hardware::CPU.arm?
        url "https://github.com/benwilber/tinysse/releases/download/v#{version}/macos-aarch64.tar.gz"
        sha256 "{{ ENV.TINYSSE_MACOS_AARCH64_SHA256 }}"

        def install
            bin.install "tinysse"
        end
      end
    end
end
