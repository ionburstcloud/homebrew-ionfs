cask "ionfs-develop" do
    version "0.3.0-develop.4"
  
  if Hardware::CPU.intel?
    sha256 "775ae32372e30cd853d89aebdf102c081173c74918c52d093e5c45e128196bc2"
    url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-mac.tar.bz2"
  else
    sha256 "df159730331dccdda2f8764176ca9f6327bf079270c509bd9ce1314b93a392a3"
    url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-mac-arm64.tar.bz2"
  end   
    name "IonFS CLI (develop branch)"
    desc "IonFS Command Line Interface provides a set of tools to manage data stored by Ionburst Cloud as if it were a remote filesystem."
    homepage "https://ionburst.cloud/docs/ionfs"
  
    depends_on macos: ">= :high_sierra"
    conflicts_with cask: "ionfs"

    binary "ionfs"
  end
