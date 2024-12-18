class Wvlet < Formula
  desc "wvlet: A flow-style query language"
  homepage "https://wvlet.org/wvlet"
  url "https://github.com/wvlet/wvlet/releases/download/v2024.9.17/wvlet-cli-2024.9.17.tar.gz"
  version "2024.9.17"
  sha256 "e8a4d7d7a1500a17ea2f1be3ff47bcac219e7d32b3bc1e9baba780c3f8cb4a49"
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
