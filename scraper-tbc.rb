require 'nokogiri'
require 'open-uri'
require 'pry'
require 'rb-readline'

# TARGET_URL = 'https://www.thebostoncalendar.com/events/comedy-sundays-the-green-briar--36'
# TARGET_URL = 'https://www.thebostoncalendar.com/events/liquid-courage-comedy-club--111'
TARGET_URL = 'https://www.thebostoncalendar.com/events/improvboston-comedy-lab--13'
# TARGET_URL = 'https://www.thebostoncalendar.com/events/midway-or-the-highway-comedy--110'

doc = Nokogiri::HTML(open(TARGET_URL))

title = doc.css(".page-header").text.strip
description = doc.css("#event_description")[0].children.text.strip
info = doc.css("#event_info")
start_date_time = info.css("p")[0].css("span")[0].attributes["content"].value
end_date_time = info.css("p")[0].css("span")[1].attributes["content"].value

location = info.css("p")[1].children.text.strip
location = location.gsub("\n", "")
location = location.gsub("\t", "")

cost = ""
if info.css("p")[2].children.children[1].text.strip == ""
  cost = info.css("p")[2].children.children.children.text.strip
else
  cost = info.css("p")[2].children.children[1].text.strip
end

website = info.css("p")[4].children.children[1].text

puts title
puts description
puts start_date_time
puts end_date_time
puts location
puts cost
puts website
