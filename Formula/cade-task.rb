class CadeTask < Formula
  include Language::Python::Virtualenv

  desc "Dirty wrapper around reminders-cli"
  homepage "https://github.com/cadeef/cade-task"

  head "https://github.com/cadeef/cade-task.git", :branch => "main"

  depends_on :python3

  resource "click" do
    url "https://files.pythonhosted.org/packages/d2/3d/fa76db83bf75c4f8d338c2fd15c8d33fdd7ad23a9b5e57eb6c5de26b430e/click-7.1.2-py2.py3-none-any.whl#sha256=dacca89f4bfadd5de3d7489b7c8a566eee0d3676333fbb50030263894c38c0dc"
    sha256 "dacca89f4bfadd5de3d7489b7c8a566eee0d3676333fbb50030263894c38c0dc"
  end

  resource "tablib" do
    url "https://files.pythonhosted.org/packages/cf/1a/6c033d742f544c192b55093ae927d9ad52d7e290ac06ac9fe6f94239d5f9/tablib-2.0.0.tar.gz#sha256=8cc2fa10bc37219ac5e76850eb7fbd50de313c7a1a7895c44af2a8dd206b7be7"
    sha256 "8cc2fa10bc37219ac5e76850eb7fbd50de313c7a1a7895c44af2a8dd206b7be7"    
  end

  def install
    virtualenv_install_with_resources
  end

  # TODO: Add your package's tests here
end
