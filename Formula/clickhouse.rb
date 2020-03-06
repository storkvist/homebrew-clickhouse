class Clickhouse < Formula
  desc "ClickHouse — open source distributed column-oriented DBMS"
  homepage "https://clickhouse.tech"
  url "https://github.com/ClickHouse/ClickHouse/archive/v20.3.1.2564-testing.tar.gz"
  version "20.3.1.2564"

  head "https://github.com/yandex/ClickHouse.git"

  depends_on "cmake" => :build
  depends_on "ninja" => :build
  depends_on "libtool" => :build
  depends_on "gettext" => :build

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args, *args
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
