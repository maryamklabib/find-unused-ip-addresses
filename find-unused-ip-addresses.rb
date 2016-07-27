#!/usr/bin/env ruby

#loop through each ip we are passeputs "I was passed: "
ARGV.each do |value|
  puts value
end


def list_of_ips_in_range(starting_ip, ending_ip)
	base_ip = start.ip.split('.')[:3]
	start = start.split('.')[3]
	end = ending_ip.split('.')[3]
	if start < end
		(start..end).step(1) do |n|
   		 # ping "#{base_ip}.#{n}"
		end
	end
end

