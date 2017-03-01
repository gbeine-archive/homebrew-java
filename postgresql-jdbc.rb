require "formula"

class PostgresqlJdbc < Formula
  homepage "http://jdbc.postgresql.org/about/about.html"
  url "https://jdbc.postgresql.org/download/postgresql-9.3-1103.jdbc3.jar"
  sha256 "d41611fc87b1b6f263fa4c44ba33d78517b364d3c0e69b2db50fadc62b529cbd"
  version "9.3-1103"

  resource "jdbc4" do
    url "https://jdbc.postgresql.org/download/postgresql-9.4.1210.jre6.jar"
    sha256 "e058415f473b7c7e2ca614d90f2844f4c41ee899b2391c29fffa50c4c806caac"
  end

  resource "jdbc41" do
    url "https://jdbc.postgresql.org/download/postgresql-9.4.1210.jre7.jar"
    sha256 "a215e490ad9e2625bf271d28838a3ff3e901d910b90b5fcdbc0a9ffe432fcfe3"
  end

  resource "jdbc42" do
    url "https://jdbc.postgresql.org/download/postgresql-9.4.1210.jar"
    sha256 "fb9eeaa11f765f8adfddebc173f3e76a2f6e3d0a51ebf1d1e0e7becd04505b84"
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
