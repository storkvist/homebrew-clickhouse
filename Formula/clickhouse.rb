class Rcm < Formula
  desc "ClickHouse — open source distributed column-oriented DBMS"
  homepage "https://clickhouse.tech"
  url "https://github.com/ClickHouse/ClickHouse/archive/v20.3.1.2564-testing.tar.gz"
  sha256 "935524456f2291afa36ef815e68f1ab4a37a4ed6f0f144b7de7fb270733e13af"

  def install
    # system "./configure", "--disable-debug", "--disable-dependency-tracking",
    #                       "--prefix=#{prefix}"
    # system "make", "install"
  end

  test do
    # system "#{bin}/lsrc"
  end
end
