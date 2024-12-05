class Wvlet < Formula
  desc "wvlet: A flow-style query language"
  homepage "https://wvlet.org/wvlet"
  url "https://github.com/wvlet/wvlet/releases/download/v2024.9.13/wvlet-cli-2024.9.13.tar.gz"
  version "2024.9.13"
  sha256 "05b8e1d9676be25a8a0735f38675830b9a17f0e7b8ddd9460208f42bbe9e7d1f"
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
