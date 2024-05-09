require 'net/http'
require 'json'
require 'pp'
 
url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?%24limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri)
all_trees = JSON.parse(response) # Convert JSON data into Ruby data.
