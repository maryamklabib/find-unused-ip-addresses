#!/usr/bin/env ruby

starting_ip = ARGV[0]
ending_ip = ARGV[1]

def ping_each_ip(ip_list)
	result = []
	ip_list.each do |ip|
		ip >> result if ip_unused?(ip)
	end
	result
end

def ip_unused?(ip)
	true
end

def list_of_ips_in_range(starting_ip, ending_ip)
	base_ip = starting_ip.split(".")[0..2]
	puts base_ip
	first = starting_ip.split(".")[3]
	last = ending_ip.split(".")[3]
	result = []
	if first < last
		(first..last).step(1) do |n|
			result	<< "#{base_ip}.#{n}" 
		end
	end
	result
end

list_of_ips_in_range(starting_ip, ending_ip)

