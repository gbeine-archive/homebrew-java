require 'formula'

class PostgresqlJdbc < Formula
  homepage "http://jdbc.postgresql.org/about/about.html"
  url "https://jdbc.postgresql.org/download/postgresql-9.3-1103.jdbc3.jar"
  sha256 "d41611fc87b1b6f263fa4c44ba33d78517b364d3c0e69b2db50fadc62b529cbd"
  version "9.3-1103"

  resource "jdbc4" do
    url "https://jdbc.postgresql.org/download/postgresql-9.4.1208.jre6.jar"
    sha256 "8ddfcddab1251720ad9c97c35ba93da4a0f113fae2350721c598bf1f409dfc5e"
  end

  resource "jdbc41" do
    url "https://jdbc.postgresql.org/download/postgresql-9.4.1208.jre7.jar"
    sha256 "24e62cf67ef1f6f6df07465d7998cc02c1ecacdfe5c578d0bf11e9f01e931e25"
  end

  resource "jdbc42" do
    url "https://jdbc.postgresql.org/download/postgresql-9.4.1208.jar"
    sha256 "51e58c2976719fcf8be7bc37cd3fd8a7dc4759d8a77d1b237d685a3c07c60ab9"
  end

  option "with-jdbc4", "Install JDBC 4.0 support"
  option "with-jdbc41", "Install JDBC 4.1 support"
  option "with-jdbc42", "Install JDBC 4.2 support"

  def install
    if build.with? "jdbc4"
      resource("jdbc4").stage do
        libexec.install Dir["*.jar"]
      end
    end
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
