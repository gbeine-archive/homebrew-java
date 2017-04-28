require "formula"

class RedshiftJdbc < Formula
  homepage "https://docs.aws.amazon.com/redshift/latest/mgmt/configure-jdbc-connection.html"
  version "1.2.1.1001"
  url "https://s3.amazonaws.com/redshift-downloads/drivers/RedshiftJDBC4-#{version}.jar"
  sha256 "d6ced3c568ec4146df269c314d27f215f08f2b321b44dd29d4bb61d458839633"

  resource "jdbc41" do
    url "https://s3.amazonaws.com/redshift-downloads/drivers/RedshiftJDBC41-#{version}.jar"
    sha256 "e875d1666b2fdf8f0ac5e67e07987cc6be78df1bf660749f7082cea9246425f5"
  end

  resource "jdbc42" do
    url "https://s3.amazonaws.com/redshift-downloads/drivers/RedshiftJDBC42-#{version}.jar"
    sha256 "134c04a38c32cc5d912f3af7063cd19c6bd42455e4a29d64895c418947732a1a"
  end

  option "with-jdbc41", "Install JDBC 4.1 support"
  option "with-jdbc42", "Install JDBC 4.2 support"

  def install
    if build.with? "jdbc41"
      resource("jdbc41").stage do
        libexec.install Dir["*.jar"]
      end
    end
    if build.with? "jdbc42"
      resource("jdbc42").stage do
        libexec.install Dir["*.jar"]
      end
    end
    libexec.install Dir["*.jar"]
  end
end
