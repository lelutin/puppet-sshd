Facter.add("ssh_version") do
  setcode do
    ssh_version = Facter::Util::Resolution.exec('ssh -V 2>&1').chomp.split(' ')[0].split('_')[1]
  end
end
