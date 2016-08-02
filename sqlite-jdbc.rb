require 'formula'

class SqliteJdbc < Formula
  homepage "https://bitbucket.org/xerial/sqlite-jdbc/"
  url "https://bitbucket.org/xerial/sqlite-jdbc/downloads/sqlite-jdbc-3.7.2.jar"
  sha256 "266a3e21ca1d021aeb3ae8bf23ac8f1a03ffe86000ae7ae8f245c193c24a0fa0"

  def install
    libexec.install Dir["*.jar"]
  end

end
