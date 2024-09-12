class Wvlet < Formula
  desc "wvlet: A flow-style query language"
  homepage "https://wvlet.org/wvlet"
  url "https://github.com/wvlet/wvlet/releases/download/v2024.9.1/wvlet-cli-2024.9.1.tar.gz"
  version "2024.9.1"
  sha256 "9cb9706a09203dfa5f648b39af696a6838183f45ce3d111481aa92da5d053ee5"
  license "Apache-2.0"

  depends_on "openjdk@22"
  
  def install
    libexec.install Dir["*"]
    bin.install Dir[libexec/"bin/*"]
    bin.env_script_all_files(libexec/"bin", JAVA_HOME: Language::Java.overridable_java_home_env("22")[:JAVA_HOME])
  end

  test do
    system "#{bin}/wvlet"
  end
end
