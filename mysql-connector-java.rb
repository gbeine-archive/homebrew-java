require "formula"

class MysqlConnectorJava < Formula
  homepage "http://dev.mysql.com/downloads/connector/j/"
  version "5.1.42"
  url "http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-#{version}.tar.gz"
  sha256 "4d261f669f685cd9e1eb5683d03019466cb9e59a8b873efce1b623254ea29231"

  def install
    prefix.install_metafiles
    libexec.install Dir["*.jar"]
    doc.install Dir["docs/*"]
  end
end
