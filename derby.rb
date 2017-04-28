require "formula"

class Derby < Formula
  homepage "http://db.apache.org/derby/"
  version="10.13.1.1"
  url "http://mirror.serversupportforum.de/apache/db/derby/db-derby-#{version}/db-derby-#{version}-bin.tar.gz"
  sha256 "74c35d7ec859b8438e69fd0d1b415dd4f4572f71d2f35fc612f2f21848eef3b3"

  option "with-examples", "Install examples"
  option "with-docs", "Install documentation"

  def install
    # Remove Windows scripts
    rm_rf Dir["bin/*.bat"]

    prefix.install_metafiles
    libexec.install Dir["bin", "lib"]
    (libexec/"examples").install Dir["demo/*"] if build.with? "examples"
    doc.install Dir["docs/*", "javadoc"] if build.with? "docs"

    bin.install_symlink "#{libexec}/bin/NetworkServerControl" => "NetworkServerControl"
    bin.install_symlink "#{libexec}/bin/dblook" => "dblook"
    bin.install_symlink "#{libexec}/bin/ij" => "ij"
    bin.install_symlink "#{libexec}/bin/setEmbeddedCP" => "setEmbeddedCP"
    bin.install_symlink "#{libexec}/bin/setNetworkClientCP" => "setNetworkClientCP"
    bin.install_symlink "#{libexec}/bin/setNetworkServerCP" => "setNetworkServerCP"
    bin.install_symlink "#{libexec}/bin/startNetworkServer" => "startNetworkServer"
    bin.install_symlink "#{libexec}/bin/stopNetworkServer" => "stopNetworkServer"
    bin.install_symlink "#{libexec}/bin/sysinfo" => "sysinfo"
  end
end
