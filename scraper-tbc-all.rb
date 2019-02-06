require 'nokogiri'
require 'open-uri'
require 'pry'
require 'rb-readline'
require 'time'

url_array = [
  "https://www.thebostoncalendar.com/events/liquid-courage-comedy-club--111",
  "https://www.thebostoncalendar.com/events/comedy-sundays-the-green-briar--36",
  "https://www.thebostoncalendar.com/events/midway-or-the-highway-comedy--110",
  "https://www.thebostoncalendar.com/events/mcgreevy-s-free-comedy-every-monday-tuesday--68",
  "https://www.thebostoncalendar.com/events/the-mendoza-line-comedy-show--61",
  "https://www.thebostoncalendar.com/events/stand-up-comedy-at-the-730-tavern--2",
  "https://www.thebostoncalendar.com/events/thunderbar-comedy-open-mic--97",
  "https://www.thebostoncalendar.com/events/hideout-comedy-at-the-white-bull-tavern-7-30pm--2",
  "https://www.thebostoncalendar.com/events/hideout-comedy-at-the-white-bull-8pm--3",
  "https://www.thebostoncalendar.com/events/comedy-at-bill-s-bar-free-wednesday-7-30pm--8",
  "https://www.thebostoncalendar.com/events/comedy-at-bill-s-bar-5-friday-8pm--2",
  "https://www.thebostoncalendar.com/events/comedy-at-bill-s-bar-5-saturday-8pm--3",
  "https://www.thebostoncalendar.com/events/nick-s-comedy-stop--500",
  "https://www.thebostoncalendar.com/events/nick-s-comedy-stop--507"
]

url_array.each do |url|

  doc = Nokogiri::HTML(open(url))

  title = doc.css(".page-header").text.strip

  description = doc.css("#event_description")[0].children.text
  binding.pry
  description = description.gsub("\n", "")
  description = description.gsub("\t", "")
  # description = ""

  info = doc.css("#event_info")

  start_date_time = info.css("p")[0].css("span")[0].attributes["content"].value
  start_date_time = Time.parse(start_date_time)

  end_date_time = info.css("p")[0].css("span")[1].attributes["content"].value
  end_date_time = Time.parse(end_date_time)

  location = info.css("p")[1].children.text.strip
  location = location.gsub("\n", "")
  location = location.gsub("\t", "")
  location = location.gsub("      ", ", ")
  location = location.gsub("  ", ", ")

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
end
