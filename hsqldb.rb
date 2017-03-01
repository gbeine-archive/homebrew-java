require "formula"

class Hsqldb < Formula
  homepage "http://hsqldb.org/"
  url "https://downloads.sourceforge.net/project/hsqldb/hsqldb/hsqldb_2_3/hsqldb-2.3.2.zip"
  sha256 "573082ab3f1c8f02c1f496b9aae15b74f1b5aedf3812ef300e90ead3047e5fb0"

  option "with-docs", "Install documentation"

  def install
    prefix.install_metafiles
    libexec.install Dir["hsqldb/lib/*.jar"]
    doc.install Dir["hsqldb/doc/*"] if build.with? "docs"
  end
end
