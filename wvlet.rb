class Wvlet < Formula
  desc "wvlet: A flow-style query language"
  homepage "https://wvlet.org/wvlet"
  url "https://github.com/wvlet/wvlet/releases/download/v2025.1.24/wvlet-cli-2025.1.24.tar.gz"
  version "2025.1.24"
  sha256 "87ea2d7cef54e41fd012caaad6f375529ffe17583475652237ea8495186652c0"
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
