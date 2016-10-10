require 'formula'

class MysqlConnectorJava < Formula
  homepage "http://dev.mysql.com/downloads/connector/j/"
  url "http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.40.tar.gz"
  version "5.1.40"
  sha256 "668330de57485999cdbbcad22ea21159a0fc3711f11ccbca7b12b65195fa7539"

  def install
    prefix.install_metafiles
    libexec.install Dir["*.jar"]
    doc.install Dir["docs/*"]
  end

end
