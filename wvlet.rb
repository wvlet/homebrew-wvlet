class Wvlet < Formula
  desc "wvlet: A flow-style query language"
  homepage "https://wvlet.org/wvlet"
  url "https://github.com/wvlet/wvlet/releases/download/v2025.1.17/wvlet-cli-2025.1.17.tar.gz"
  version "2025.1.17"
  sha256 "64c55d05ba38948a94cfb82b6226ce7f2f3796928ab525f00281e55a6c722f0c"
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
