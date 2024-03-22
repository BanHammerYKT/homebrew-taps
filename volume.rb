require "formula"

class Volume < Formula
    homepage "https://github.com/banhammerykt/volume"
    url "https://github.com/banhammerykt/volume/releases/download/v0.0.2/volume"

    def install
        bin.install "volume"
    end

    test do
        system "#{bin}/volume -v"
    end
end
