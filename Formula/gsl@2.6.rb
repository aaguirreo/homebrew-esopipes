class GslAT26 < Formula
  desc "Numerical library for C and C++"
  homepage "https://www.gnu.org/software/gsl/"
  url "https://ftp.gnu.org/gnu/gsl/gsl-2.6.tar.gz"
  mirror "https://ftpmirror.gnu.org/gsl/gsl-2.6.tar.gz"
  sha256 "b782339fc7a38fe17689cb39966c4d821236c28018b6593ddb6fd59ee40786a8"
  license "GPL-3.0-or-later"

  def install
    system "./configure", *std_configure_args.reject { |s| s["--disable-debug"] }
    system "make"
    system "make", "install"
  end

  test do
    system bin/"gsl-randist", "0", "20", "cauchy", "30"
  end
end
