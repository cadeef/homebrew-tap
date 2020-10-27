class CadeTask < Formula
  include Language::Python::Virtualenv

  desc "Dirty wrapper around reminders-cli"
  homepage "https://github.com/cadeef/cade-task"
  license "MIT"
  url "https://github.com/cadeef/cade-task/archive/v0.1.0.tar.gz"
  sha256 "e53f6935f0983d09aa38bd3e3cb4d6c8266dab5ac354fc0d723ba0aeffa55667"
  head "https://github.com/cadeef/cade-task.git", branch: "main"

  depends_on "python@3.9"

  resource "click" do
    url "https://files.pythonhosted.org/packages/27/6f/be940c8b1f1d69daceeb0032fee6c34d7bd70e3e649ccac0951500b4720e/click-7.1.2.tar.gz#sha256=d2b5255c7c6349bc1bd1e59e08cd12acbbd63ce649f2588755783aa94dfb6b1a"
    sha256 "d2b5255c7c6349bc1bd1e59e08cd12acbbd63ce649f2588755783aa94dfb6b1a"
  end

  resource "tablib" do
    url "https://files.pythonhosted.org/packages/cf/1a/6c033d742f544c192b55093ae927d9ad52d7e290ac06ac9fe6f94239d5f9/tablib-2.0.0.tar.gz#sha256=8cc2fa10bc37219ac5e76850eb7fbd50de313c7a1a7895c44af2a8dd206b7be7"
    sha256 "8cc2fa10bc37219ac5e76850eb7fbd50de313c7a1a7895c44af2a8dd206b7be7"
  end

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/57/6f/213d075ad03c84991d44e63b6516dd7d185091df5e1d02a660874f8f7e1e/tabulate-0.8.7.tar.gz#sha256=db2723a20d04bcda8522165c73eea7c300eda74e0ce852d9022e0159d7895007"
    sha256 "db2723a20d04bcda8522165c73eea7c300eda74e0ce852d9022e0159d7895007"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    # FIXME: Add a proper test
    system "true"
  end
end
