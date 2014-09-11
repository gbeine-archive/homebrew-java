require "formula"

class Hsqldb < Formula
  homepage "http://hsqldb.org/"
  url "https://downloads.sourceforge.net/project/hsqldb/hsqldb/hsqldb_2_3/hsqldb-2.3.2.zip"
  sha1 "be0062a00d1b2835491e593aca764298c6ddde0b"

  option "with-docs", "Install documentation"

  def install
    prefix.install_metafiles
    libexec.install Dir["hsqldb/lib/*.jar"]
    doc.install Dir["hsqldb/doc/*"] if build.with? "docs"
  end

end
