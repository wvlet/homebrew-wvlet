class Wvlet < Formula
  desc "wvlet: A flow-style query language"
  homepage "https://wvlet.org/wvlet"
  url "https://github.com/wvlet/wvlet/releases/download/v2025.1.22/wvlet-cli-2025.1.22.tar.gz"
  version "2025.1.22"
  sha256 "9f3da8865296284207f55e447eb142dbec89d6aa0721985c53553e58ea27badf"
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
