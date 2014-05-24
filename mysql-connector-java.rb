require 'formula'

class MysqlConnectorJava < Formula
  homepage 'http://dev.mysql.com/downloads/connector/j/'
  url 'http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.30.tar.gz'
  sha1 '726240f679eddb3429755e24624505666b97b199'

  def install
    prefix.install_metafiles
    libexec.install Dir['*.jar']
    doc.install Dir['docs/*']
  end

end
