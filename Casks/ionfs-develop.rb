cask "ionfs-develop" do
    version "0.2.4-develop.1"
    sha256 "469ce010e05be9cddcaad6e448eab812b0120c09c04a49b64c437275ac2a7e80"
  
    url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-mac.tar.bz2",
        verified: "github.com/ionburstcloud/ionfs"
    name "IonFS CLI (develop branch)"
    desc "IonFS Command Line Interface provides a set of tools to manage data stored by Ionburst Cloud as if it were a remote filesystem."
    homepage "https://ionburst.cloud/docs/ionfs"
  
    depends_on macos: ">= :high_sierra"
    conflicts_with cask: "ionfs"

    binary "ionfs"
  end
