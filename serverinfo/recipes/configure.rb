node[:deploy].each do |application, deploy|
  if deploy[:application_type] != 'java'
    Chef::Log.debug("Skipping serverinfo::configure for application #{application}")
    next
  end

  template '/etc/servers.conf' do
    source    'servers.info.erb'
  end
end

