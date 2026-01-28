class Wvlet < Formula
  desc "wvlet: A flow-style query language"
  homepage "https://wvlet.org/wvlet"
  url "https://github.com/wvlet/wvlet/releases/download/v2026.1.0/wvlet-cli-2026.1.0.tar.gz"
  version "2026.1.0"
  sha256 "f08868cb8c9f79e7b48cfae9fa3157e1c8a2ebb7e66899a0eaca27ded07a8634"
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
