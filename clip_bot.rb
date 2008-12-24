require 'rubygems'
require 'twitter'
require 'net/http'
require 'uri'

if File.exists?("last_id.txt")
    latest = File.open("last_id.txt")
    last_id = latest.readline.to_i
    latest.close
else
    last_id = 0.to_i
end

Twitter::Base.new('EMAIL', 'PASSWORD').direct_messages(:since_id => last_id).each do |dm|
    
    Net::HTTP.post_form(URI.parse('http://clipd.org/create'), {'u' => 'null', 't' => 'Twitter clip', 's' => dm.text})
    
    if dm.id.to_i > last_id
      last_id = dm.id.to_i
    end
    
    latest = File.open("last_id.txt", "w")
    latest.puts(last_id)

end