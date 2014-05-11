node[:deploy].each do |application, deploy|
  if deploy[:application_type] != 'java'
    Chef::Log.debug("Skipping serverinfo::configure for application #{application}")
    next
  end

  template '/etc/servers.txt' do
    owner     node['opsworks_java']['tomcat']['user']
    mode      '666'
    source    'servers.txt.erb'
  end
end

