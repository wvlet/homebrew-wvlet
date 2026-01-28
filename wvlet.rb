class Wvlet < Formula
  desc "wvlet: A flow-style query language"
  homepage "https://wvlet.org/wvlet"
  url "https://github.com/wvlet/wvlet/releases/download/v2026.1.1/wvlet-cli-2026.1.1.tar.gz"
  version "2026.1.1"
  sha256 "f9fe8fd83f2866d4374fc24cb2ecd9d1a833918eeba4c89e0045f675ca8e57df"
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
