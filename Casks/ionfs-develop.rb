cask "ionfs-develop" do
    version "0.2.5-develop.1"
    sha256 "c33e948ce8380984205c9fef552b3c3888b8189b4be710d476937babe12992e0"

    url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-mac.tar.bz2"   
    name "IonFS CLI (develop branch)"
    desc "IonFS Command Line Interface provides a set of tools to manage data stored by Ionburst Cloud as if it were a remote filesystem."
    homepage "https://ionburst.cloud/docs/ionfs"
  
    depends_on macos: ">= :high_sierra"
    conflicts_with cask: "ionfs"

    binary "ionfs"
  end
