cask "ionfs" do
    version "0.2.4"
    sha256 "8ff37747ae6034fdb720c90e88144a35c9528295a3e16cf942d4a57ce2763e29"
  
    url "https://ionfs.s3.fr-par.scw.cloud/ionfs-#{version}-mac.tar.bz2",
        verified: "github.com/ionburstcloud/ionfs"
    name "IonFS CLI"
    desc "IonFS Command Line Interface provides a set of tools to manage data stored by Ionburst Cloud as if it were a remote filesystem."
    homepage "https://ionburst.cloud/docs/ionfs"
  
    depends_on macos: ">= :high_sierra"

    binary "ionfs"
  end
