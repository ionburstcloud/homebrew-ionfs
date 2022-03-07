cask "ionfs-develop" do
    version "0.3.0-develop.2"
  
  if Hardware::CPU.intel?
    sha256 "fcf7ed81ff69ffce8a55c402f1106dbf65be22630d7e00c450b7029d52e95ef1"
    url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-mac.tar.bz2"
  else
    sha256 "9120ea6fb9d83b0ec677f33007839ef12d5cb2f667fc1b669adde502eb373756"
    url "https://ionfs.s3.fr-par.scw.cloud/develop/ionfs-#{version}-mac-arm64.tar.bz2"
  end   
    name "IonFS CLI (develop branch)"
    desc "IonFS Command Line Interface provides a set of tools to manage data stored by Ionburst Cloud as if it were a remote filesystem."
    homepage "https://ionburst.cloud/docs/ionfs"
  
    depends_on macos: ">= :high_sierra"
    conflicts_with cask: "ionfs"

    binary "ionfs"
  end
