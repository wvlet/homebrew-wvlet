class Wvlet < Formula
  desc "wvlet: A flow-style query language"
  homepage "https://wvlet.org/wvlet"
  url "https://github.com/wvlet/wvlet/releases/download/v2024.9.0/wvlet-cli-2024.9.0.tar.gz" :
  version "2024.9.0"
  sha256 "c9b0e651a62b8f9239655d108d7d91c5039a710e7c2affafac24e79ae097f307"
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
