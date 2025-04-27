class Wvlet < Formula
  desc "wvlet: A flow-style query language"
  homepage "https://wvlet.org/wvlet"
  url "https://github.com/wvlet/wvlet/releases/download/v2025.1.6/wvlet-cli-2025.1.6.tar.gz"
  version "2025.1.6"
  sha256 "5a6c6bda1d2dca9fcd33523f79af7566693a9d2738f96767fbdf9cf207f52182"
  license "Apache-2.0"

  depends_on "openjdk@21"
  
  def install
    libexec.install Dir["*"]
    bin.install Dir[libexec/"bin/*"]
    bin.env_script_all_files(libexec/"bin", JAVA_HOME: Language::Java.overridable_java_home_env("21")[:JAVA_HOME])
  end

  test do
    system "#{bin}/wvlet"
  end
end
