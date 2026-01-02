class Wvlet < Formula
  desc "wvlet: A flow-style query language"
  homepage "https://wvlet.org/wvlet"
  url "https://github.com/wvlet/wvlet/releases/download/v2025.1.23/wvlet-cli-2025.1.23.tar.gz"
  version "2025.1.23"
  sha256 "8b04802f0f8a18b5d3ec68f35fef38f704f0694e15e27dfa6b16d347596ce652"
  license "Apache-2.0"

  depends_on "openjdk@25"

  def install
    libexec.install Dir["*"]
    bin.install Dir[libexec/"bin/*"]
    bin.env_script_all_files(libexec/"bin", JAVA_HOME: Language::Java.overridable_java_home_env("25")[:JAVA_HOME])
  end

  test do
    system "#{bin}/wvlet"
  end
end
