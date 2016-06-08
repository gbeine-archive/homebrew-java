require 'formula'

class MysqlConnectorJava < Formula
  homepage "http://dev.mysql.com/downloads/connector/j/"
  url "http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.39.tar.gz"
  version "5.1.39"
  sha256 "fa1bdc9ee5323642c5a533fa73fbcf537b26a979e5981c486c24256c433c7718"

  def install
    prefix.install_metafiles
    libexec.install Dir["*.jar"]
    doc.install Dir["docs/*"]
  end

end
