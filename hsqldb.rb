require "formula"

class Hsqldb < Formula
  homepage "http://hsqldb.org/"
  version="2.4.0"
  url "https://downloads.sourceforge.net/project/hsqldb/hsqldb/hsqldb_2_4/hsqldb-#{version}.zip"
  sha256 "1c99d43fbdd87b22fb8a788d70af4042eeb8da9314886103b38ce71cffb13f2d"

  option "with-docs", "Install documentation"

  def install
    prefix.install_metafiles
    libexec.install Dir["hsqldb/lib/*.jar"]
    doc.install Dir["hsqldb/doc/*"] if build.with? "docs"
  end
end
