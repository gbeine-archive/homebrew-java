require "formula"

class Derby < Formula
  homepage "http://db.apache.org/derby/"
  url "http://mirror.serversupportforum.de/apache//db/derby/db-derby-10.10.2.0/db-derby-10.10.2.0-bin.tar.gz"
  sha1 "3fdccedffc7ed9d69350563670833f418e90cecc"

  option "with-examples", "Install examples"
  option "with-docs", "Install documentation"

  def install
    # Remove Windows scripts
    rm_rf Dir['bin/*.bat']

    prefix.install_metafiles
    libexec.install Dir['bin', 'lib']
    (libexec/'examples').install Dir['demo/*'] if build.with? 'examples'
    doc.install Dir['docs/*', 'javadoc'] if build.with? 'docs'
    
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
