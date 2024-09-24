class Wvlet < Formula
  desc "wvlet: A flow-style query language"
  homepage "https://wvlet.org/wvlet"
  url "https://github.com/wvlet/wvlet/releases/download/v2024.9.2/wvlet-cli-2024.9.2.tar.gz"
  version "2024.9.2"
  sha256 "c3b52cf97cb1878375dd3e2547cca099d500b8ead743409ad703e6f32920aeb3"
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
