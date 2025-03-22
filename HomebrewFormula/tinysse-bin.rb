class TinysseBin < Formula
    desc "A programmable server for Server-Sent Events (SSE)."
    homepage "https://github.com/benwilber/tinysse"
    version "0.3.0"

    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/benwilber/tinysse/releases/download/v#{version}/macos-x86_64.tar.gz"
        sha256 "e5b77562be37df9c8a6b330de75ab21af5b082010b610e8840855d1b520db300"

        def install
            bin.install "tinysse"
        end
      end

      if Hardware::CPU.arm?
        url "https://github.com/benwilber/tinysse/releases/download/v#{version}/macos-aarch64.tar.gz"
        sha256 "a0f1633e79b008d949ffd41b08e87d16a55702c80ea4cca79f3e20b143dece8c"

        def install
            bin.install "tinysse"
        end
      end
    end
end
