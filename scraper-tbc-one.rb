require 'nokogiri'
require 'open-uri'
require 'pry'
require 'rb-readline'

url = "https://www.thebostoncalendar.com/events/nick-s-comedy-stop--500"
doc = Nokogiri::HTML(open(url))

title = doc.css(".page-header").text.strip

description = doc.css("#event_description")[0].children.text
description = description.gsub("\n", "")
description = description.gsub("\t", "")
# binding.pry

info = doc.css("#event_info")

start_date_time = info.css("p")[0].css("span")[0].attributes["content"].value
start_date_time = Time.parse(start_date_time)

end_date_time = info.css("p")[0].css("span")[1].attributes["content"].value
end_date_time = Time.parse(end_date_time)

location = info.css("p")[1].children.text.strip
location = location.gsub("\n", "")
location = location.gsub("\t", "")
# binding.pry

cost = ""
if info.css("p")[2].children.children[1].text.strip == ""
  cost = info.css("p")[2].children.children.children.text.strip
else
  cost = info.css("p")[2].children.children[1].text.strip
end

website = ""
if info.css("p")[4].children.children[1] == nil
  website = "not found"
else
  website = info.css("p")[4].children.children[1].text
end

puts "Event.create!(title: \"#{title}\", description: \"#{description}\", start_date_time: \"#{start_date_time}\", end_date_time: \"#{end_date_time}\", location: \"#{location}\", cost: \"#{cost}\", website: \"#{website}\")\n\n"
