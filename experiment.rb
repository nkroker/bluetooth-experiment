require 'ble'
require 'byebug'

# Selecter adapter
$a = BLE::Adapter.new('hci0')
puts "Info: #{$a.iface} #{$a.address} #{$a.name}"

# Run discovery
$a.start_discovery
sleep(2)
$a.stop_discovery
byebug
puts $a

# Get device and connect to it
# $d = $a['F4:AD:CB:FB:B4:85']
# $d.connect

# # Get temperature from the environmental sensing service
# $d[:environmental_sensing, :temperature]

# # Dump device information
# srv = :device_information
# $d.characteristics(srv).each {|uuid|
#     info  = BLE::Characteristic[uuid]
#     name  = info.nil? ? uuid : info[:name]
#     value = $d[srv, uuid] rescue '/!\\ not-readable /!\\'
#     puts "%-30s: %s" % [ name, value ]
# }
