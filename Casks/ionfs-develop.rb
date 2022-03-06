cask "ionfs-develop" do
    version "0.3.0-develop.1"
  
  if Hardware::CPU.intel?
    sha256 "c33e948ce8380984205c9fef552b3c3888b8189b4be710d476937babe12992e0"
    url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-mac.tar.bz2"
  else
    sha256 "2311ea591c4cad518620fc83284b67e89b0a922ff715b18881f5347c2daac047"
    url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-mac-arm64.tar.bz2"
  end   
    name "IonFS CLI (develop branch)"
    desc "IonFS Command Line Interface provides a set of tools to manage data stored by Ionburst Cloud as if it were a remote filesystem."
    homepage "https://ionburst.cloud/docs/ionfs"
  
    depends_on macos: ">= :high_sierra"
    conflicts_with cask: "ionfs"

    binary "ionfs"
  end
