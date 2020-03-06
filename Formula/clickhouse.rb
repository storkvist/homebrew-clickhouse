class Clickhouse < Formula
  desc "ClickHouse — open source distributed column-oriented DBMS"
  homepage "https://clickhouse.tech"
  version "20.1.6.30"
  sha256 "fa69e72ee35ebfe1b35aeeab050b08884c37aa1b19b87a1f5190a9b0ce07f551"
  url "https://github.com/ClickHouse/ClickHouse/archive/v20.1.6.30-stable.tar.gz"

  depends_on "cmake" => :build
  depends_on "ninja" => :build
  depends_on "libtool" => :build
  depends_on "gettext" => :build

  def install
    mkdir "build" do
      system "cmake", "..", "-DCMAKE_CXX_COMPILER=`which clang++`", "-DCMAKE_C_COMPILER=`which clang`"
      system "ninja"
    end

    # system "./configure", "--disable-debug", "--disable-dependency-tracking",
    #                       "--prefix=#{prefix}"
    # system "make", "install"
  end

  test do
    # system "#{bin}/lsrc"
  end
end
