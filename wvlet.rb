class Wvlet < Formula
  desc "wvlet: A flow-style query language"
  homepage "https://wvlet.org/wvlet"
  url "https://github.com/wvlet/wvlet/releases/download/v2026.3.0/wvlet-cli-2026.3.0.tar.gz"
  version "2026.3.0"
  sha256 "1064c551122ee213dde0a49ade88f13b6851b1de18c5eb06b3e2c0b8d7e32138"
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
