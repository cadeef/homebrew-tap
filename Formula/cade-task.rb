class CadeTask < Formula
  include Language::Python::Virtualenv

  desc "Dirty wrapper around reminders-cli"
  homepage "https://github.com/cadeef/cade-task"
  url "https://github.com/cadeef/cade-task/archive/refs/tags/v0.1.1_1.tar.gz"
  sha256 "ac18d5f6ca1f264379f281ea56c383c843994c876a188bb3a3fd213733e633be"
  license "MIT"
  head "https://github.com/cadeef/cade-task.git", branch: "main"

  bottle do
    root_url "https://github.com/cadeef/homebrew-tap/releases/download/cade-task-0.1.1"
    sha256 cellar: :any_skip_relocation, monterey: "f739a6fe296be56e6d779041729c8a582df4e9d870113f46c7472413b9192c80"
  end

  depends_on "cmake" => :build
  depends_on "python@3.11"

  resource "click" do
    url "https://files.pythonhosted.org/packages/59/87/84326af34517fca8c58418d148f2403df25303e02736832403587318e9e8/click-8.1.3.tar.gz"
    sha256 "7682dc8afb30297001674575ea00d1814d808d6a36af415a82bd481d37ba7b8e"
  end

  resource "tablib" do
    url "https://files.pythonhosted.org/packages/95/6a/d62bb27ecd6371cd10fc7f68fa9b06cf46e4771582f2aae94fb56c24add7/tablib-3.5.0.tar.gz"
    sha256 "f6661dfc45e1d4f51fa8a6239f9c8349380859a5bfaa73280645f046d6c96e33"
  end

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/ec/fe/802052aecb21e3797b8f7902564ab6ea0d60ff8ca23952079064155d1ae1/tabulate-0.9.0.tar.gz"
    sha256 "0095b12bf5966de529c0feb1fa08671671b3368eec77d7ef7ab114be2c068b3c"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    # FIXME: Add a proper test
    system "true"
  end
end
