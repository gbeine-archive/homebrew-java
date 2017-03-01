require "formula"

class SqliteJdbc < Formula
  homepage "https://bitbucket.org/xerial/sqlite-jdbc/"
  url "https://bitbucket.org/xerial/sqlite-jdbc/downloads/sqlite-jdbc-3.16.1.jar"
  sha256 "211a0cb1694e53b7a120034ee33bd7b719bc7d0f5b619af2be26f2e5fb66e763"

  def install
    libexec.install Dir["*.jar"]
  end
end
