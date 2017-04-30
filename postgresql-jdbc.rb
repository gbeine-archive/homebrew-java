require "formula"

class PostgresqlJdbc < Formula
  homepage "http://jdbc.postgresql.org/about/about.html"
  url "https://jdbc.postgresql.org/download/postgresql-9.3-1103.jdbc3.jar"
  sha256 "d41611fc87b1b6f263fa4c44ba33d78517b364d3c0e69b2db50fadc62b529cbd"

  resource "jdbc4" do
    url "https://jdbc.postgresql.org/download/postgresql-42.0.0.jre6.jar"
    sha256 "827e8ed8607724656375a02dd1fc4fba6a3d3150e064fc45ba47e85e0419fafa"
  end

  resource "jdbc41" do
    url "https://jdbc.postgresql.org/download/postgresql-42.0.0.jre7.jar"
    sha256 "3bc916fcce8413b8d4f88be1e413edd564329051f0ffd3ea4b9bc98709604acf"
  end

  resource "jdbc42" do
    url "https://jdbc.postgresql.org/download/postgresql-42.0.0.jar"
    sha256 "3bec21d1677f6cfce3e49d3578d4c84365264841753941197edf50363de28798"
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
