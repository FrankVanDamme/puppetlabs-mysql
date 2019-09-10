Facter.add("mysql_read_only") do
  setcode do
    Facter::Util::Resolution.exec('mysql -NBe "show variables like \'read_only\';" | cut -f 2')
  end
end
