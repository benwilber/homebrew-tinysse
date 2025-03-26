class TinysseBin < Formula
    desc "A programmable server for Server-Sent Events (SSE)."
    homepage "https://tinysse.com"
    version "0.5.0"

    on_macos do
      if Hardware::CPU.intel?
        url "https://github.com/benwilber/tinysse/releases/download/v#{version}/macos-x86_64.tar.gz"
        sha256 "05d50c74bfc4717f930b937e5e16922fca1b8ab5565ed9c97391c5ba19712349"

        def install
            bin.install "tinysse"
        end
      end

      if Hardware::CPU.arm?
        url "https://github.com/benwilber/tinysse/releases/download/v#{version}/macos-aarch64.tar.gz"
        sha256 "63ff8f3bb0cc470cbbb8102f395f70f067bf3f6ea0c3e551fa21f39c811c5c93"

        def install
            bin.install "tinysse"
        end
      end
    end
end
