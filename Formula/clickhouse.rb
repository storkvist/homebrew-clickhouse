class Clickhouse < Formula
  desc "ClickHouse — open source distributed column-oriented DBMS"
  homepage "https://clickhouse.tech"
  version "20.1.6.30"
  sha256 "4ba6f90f8668c48bc14b75c0ec510044f9b200c0a9f295932f25535d329e24cd"
  url "https://github.com/yandex/ClickHouse.git", tag: "v20.1.6.30-stable"

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
