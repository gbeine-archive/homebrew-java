require 'formula'

class SqliteJdbc < Formula
  homepage "https://bitbucket.org/xerial/sqlite-jdbc/"
  url "https://bitbucket.org/xerial/sqlite-jdbc/downloads/sqlite-jdbc-3.7.2.jar"
  sha1 "cea9f7f8e6bcb580d953a8651fb8391640de0f85"

  def install
    libexec.install Dir["*.jar"]
  end

end
