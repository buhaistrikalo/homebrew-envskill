class Envskill < Formula
  include Language::Python::Virtualenv

  desc "Least-privilege environment variable bridge for AI coding agents"
  homepage "https://github.com/buhaistrikalo/envskill"
  url "https://github.com/buhaistrikalo/envskill/releases/download/v0.3.0/envskill-0.3.0-py3-none-any.whl"
  sha256 "f3f7aba5255f823c99571ec6ffb47c9a3ad61acf72e264bed33ea834a562fb17"
  license "MIT"

  depends_on "python@3.13"

  def install
    venv = virtualenv_create(libexec, "python3.13")
    venv.pip_install_and_link buildpath / "envskill-0.3.0-py3-none-any.whl", build_isolation: false
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/envskill --version")
    assert_match '"schema_version": 1', shell_output("#{bin}/envskill doctor --agent all --json", 1)
  end
end
