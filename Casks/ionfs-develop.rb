cask "ionfs-develop" do
    version "0.3.0-develop.3"
  
  if Hardware::CPU.intel?
    sha256 "cb8450f03a3885db3486742b681b43c5cd9582cbc836f68dfa396be93b63c399"
    url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-mac.tar.bz2"
  else
    sha256 "74ef2dfd8839c3dca8135d4a70134ecf98b5ebf0a5795b3d9e838ad8236cacf7"
    url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-mac-arm64.tar.bz2"
  end   
    name "IonFS CLI (develop branch)"
    desc "IonFS Command Line Interface provides a set of tools to manage data stored by Ionburst Cloud as if it were a remote filesystem."
    homepage "https://ionburst.cloud/docs/ionfs"
  
    depends_on macos: ">= :high_sierra"
    conflicts_with cask: "ionfs"

    binary "ionfs"
  end
