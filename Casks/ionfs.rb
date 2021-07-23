cask "ionfs" do
    version "0.2.2"
    sha256 "32c8c0749fe694f2d88d33d839b9efff16bca100259b03be829eef0628a9320e"
  
    url "https://ionfs.s3.fr-par.scw.cloud/ionfs-#{version}-mac.tar.bz2",
        verified: "github.com/ionburstcloud/ionfs"
    name "IonFS CLI"
    desc "IonFS Command Line Interface provides a set of tools to manage data stored by Ionburst Cloud as if it were a remote filesystem."
    homepage "https://ionburst.cloud/docs/ionfs"
  
    depends_on macos: ">= :high_sierra"

    binary "ionfs"
  end