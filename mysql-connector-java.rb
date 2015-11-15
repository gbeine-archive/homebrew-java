require 'formula'

class MysqlConnectorJava < Formula
  homepage "http://dev.mysql.com/downloads/connector/j/"
  url "http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.37.tar.gz"
  version "5.1.37"
  sha256 "01e2f104c169863b4937a77045b008a372e5e254b803f69f030986167e626824"

  def install
    prefix.install_metafiles
    libexec.install Dir["*.jar"]
    doc.install Dir["docs/*"]
  end

end
