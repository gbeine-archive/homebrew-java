require "formula"

class RedshiftJdbc < Formula
  homepage "https://docs.aws.amazon.com/redshift/latest/mgmt/configure-jdbc-connection.html"
  version "1.1.17.1017"
  url "https://s3.amazonaws.com/redshift-downloads/drivers/RedshiftJDBC4-#{version}.jar"
  sha256 "fb4243545515d4edf3f0869500209950817f6bd88bb7c483fcf8efbe44c8bd10"

  resource "jdbc41" do
    url "https://s3.amazonaws.com/redshift-downloads/drivers/RedshiftJDBC41-#{version}.jar"
    sha256 "50b56d783960f354ff4e607ab411672c12f135efe7e963a59de35b71c7fab8cb"
  end

  resource "jdbc42" do
    url "https://s3.amazonaws.com/redshift-downloads/drivers/RedshiftJDBC42-#{version}.jar"
    sha256 "91a0e1c7a8a7449b4a12883b1bd906c1766b6a8bf4d4e9f3c23a3cc126abe0c5"
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
