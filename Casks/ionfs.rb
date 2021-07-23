cask "ionfs" do
    version "0.2.3"
    sha256 "c4328b13bc5f66bf320f61f2b81bb648267106d1f968d917a3e330b50f1cea4e"
  
    url "https://ionfs.s3.fr-par.scw.cloud/ionfs-#{version}-mac.tar.bz2",
        verified: "github.com/ionburstcloud/ionfs"
    name "IonFS CLI"
    desc "IonFS Command Line Interface provides a set of tools to manage data stored by Ionburst Cloud as if it were a remote filesystem."
    homepage "https://ionburst.cloud/docs/ionfs"
  
    depends_on macos: ">= :high_sierra"

    binary "ionfs"
  end