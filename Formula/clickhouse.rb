class Clickhouse < Formula
  desc "ClickHouse — open source distributed column-oriented DBMS"
  homepage "https://clickhouse.tech"
  version "20.1.6.30"
  sha256 "935524456f2291afa36ef815e68f1ab4a37a4ed6f0f144b7de7fb270733e13af"
  url "https://github.com/yandex/ClickHouse.git", tag: "v20.1.6.30-stable"

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
