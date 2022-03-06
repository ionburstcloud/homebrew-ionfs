cask "ionfs-develop" do
    version "0.3.0-develop.1"
  
  if Hardware::CPU.intel?
    sha256 "05a7dc6866c72c3a1e54c7f3237802f4491d5d555cc5b3c2493a0e7273dd125d"
    url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-mac.tar.bz2"
  else
    sha256 "2fcbd8df74612323d6a46f4af121ab2e8a678f0363c81894deb1b684d24d4179"
    url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-mac-arm64.tar.bz2"
  end   
    name "IonFS CLI (develop branch)"
    desc "IonFS Command Line Interface provides a set of tools to manage data stored by Ionburst Cloud as if it were a remote filesystem."
    homepage "https://ionburst.cloud/docs/ionfs"
  
    depends_on macos: ">= :high_sierra"
    conflicts_with cask: "ionfs"

    binary "ionfs"
  end
