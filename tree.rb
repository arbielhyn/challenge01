require 'net/http'
require 'json'
require 'pp'
 
url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?%24limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri)
all_trees = JSON.parse(response) # Convert JSON data into Ruby data.

ash_count = 0
all_trees.each do |tree|
    if tree['common_name'] && tree['common_name'].include?('ash')
        ash_count += 1
    end
end

puts "Total Ash Trees in Winnipeg = #{ash_count}"