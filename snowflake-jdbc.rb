require "formula"

class SnowflakeJdbc < Formula
  homepage "https://github.com/snowflakedb/snowflake-jdbc/"
  version="3.0.9"
  url "https://repo1.maven.org/maven2/net/snowflake/snowflake-jdbc/#{version}/snowflake-jdbc-#{version}.jar"
  sha256 "71667948ecd69f1f0729ef73a5505f059000c4d9fee90baaea5857bc3d9773e5"

  def install
    libexec.install Dir["*.jar"]
  end
end
