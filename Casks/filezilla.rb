cask "filezilla" do
  version "3.67.1"

  on_arm do
    sha256 "8072bb4b8c9359eb51cb660928f4d7a7b985b59045eeeb886bc1a67539271909"

    url "https://github.com/zerosuxx/apps/releases/download/filezilla-3.67.1/FileZilla_#{version}_macos-arm64.app.tar.bz2",
        verified: "https://github.com/zerosuxx/apps/releases/download/filezilla-3.67.1/"
  end
  on_intel do
    sha256 "4cfb11de4e4a0053ef5ab11ffefe7fd804fcea2f6452a9b2e4cc2fd0a9b95f5c"

    url "https://github.com/zerosuxx/apps/releases/download/filezilla-3.67.1/FileZilla_#{version}_macos-x86.app.tar.bz2",
        verified: "https://github.com/zerosuxx/apps/releases/download/filezilla-3.67.1/"
  end

  name "FileZilla FTP Client"
  desc "FileZilla Client is a fast and reliable cross-platform FTP, FTPS and SFTP client with lots of useful features and an intuitive graphical user interface."
  homepage "https://filezilla-project.org"

  livecheck do
    skip "No version information available"
  end

  app "FileZilla.app"
end
