require 'formula'

class PostgresqlJdbc < Formula
  homepage "http://jdbc.postgresql.org/about/about.html"
  url "http://jdbc.postgresql.org/download/postgresql-9.3-1102.jdbc3.jar"
  sha1 "bad73013364e340cd8dcaea92ec010fc022547f1"
  version "9.3-1102"

  resource "jdbc4" do
    url "http://jdbc.postgresql.org/download/postgresql-9.3-1102.jdbc4.jar"
    sha1 "b1f7eea7af1ee9afdd5a43e8935154e9e206fe01"
  end

  resource "jdbc41" do
    url "http://jdbc.postgresql.org/download/postgresql-9.3-1102.jdbc41.jar"
    sha1 "de013bb55a400e83f18523d2b944fac199183796"
  end

  option "with-jdbc4", "Install JDBC 4 support"
  option "with-jdbc41", "Install JDBC 41 support"

  def install
    if build.include? "with-jdbc4"
      resource("jdbc4").stage do
        libexec.install Dir["*.jar"]
      end
    end
    if build.include? "with-jdbc41"
      resource("jdbc41").stage do
        libexec.install Dir["*.jar"]
      end
    end
    libexec.install Dir["*.jar"]
  end
end
