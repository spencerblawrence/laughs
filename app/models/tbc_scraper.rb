require 'open-uri'
require 'time'

class TBCScraper

  TARGET_URLS = [
    "https://www.thebostoncalendar.com/events/aziz-ansari-road-to-nowhere"
    # "https://www.thebostoncalendar.com/events/liquid-courage-comedy-club--111",
    # "https://www.thebostoncalendar.com/events/comedy-sundays-the-green-briar--36",
    # "https://www.thebostoncalendar.com/events/midway-or-the-highway-comedy--110",
    # "https://www.thebostoncalendar.com/events/mcgreevy-s-free-comedy-every-monday-tuesday--68",
    # "https://www.thebostoncalendar.com/events/the-mendoza-line-comedy-show--61",
    # "https://www.thebostoncalendar.com/events/stand-up-comedy-at-the-730-tavern--2",
    # "https://www.thebostoncalendar.com/events/thunderbar-comedy-open-mic--97",
    # "https://www.thebostoncalendar.com/events/hideout-comedy-at-the-white-bull-tavern-7-30pm--2",
    # "https://www.thebostoncalendar.com/events/hideout-comedy-at-the-white-bull-8pm--3",
    # "https://www.thebostoncalendar.com/events/comedy-at-bill-s-bar-free-wednesday-7-30pm--8",
    # "https://www.thebostoncalendar.com/events/comedy-at-bill-s-bar-5-friday-8pm--2",
    # "https://www.thebostoncalendar.com/events/comedy-at-bill-s-bar-5-saturday-8pm--3",
    # "https://www.thebostoncalendar.com/events/nick-s-comedy-stop--500",
    # "https://www.thebostoncalendar.com/events/nick-s-comedy-stop--507"
  ]

  def self.scrape
    TARGET_URLS.each do |url|
      doc = Nokogiri::HTML(open(url))

      name = doc.css(".page-header").text.strip

      # description = doc.css("#event_description")[0].children.text
      # description = description.gsub("n", "")
      # description = description.gsub("t", "")
      description = ""

      info = doc.css("#event_info")

      venue = info.css("span[itemprop=name]").text.strip
      address_street = info.css("span[itemprop=streetAddress]").text.strip
      address_city = info.css("span[itemprop=addressLocality]").text.strip
      address_state = info.css("span[itemprop=addressRegion]").text.strip
      address_zip = info.css("span[itemprop=postalCode]").text.strip
      address_full = "#{address_street}, #{address_city}, #{address_state}, #{address_zip}"

      start_date_time = info.css("p")[0].css("span")[0].attributes["content"].value
      start_date_time = Time.parse(start_date_time)

      end_date_time = info.css("p")[0].css("span")[1].attributes["content"].value
      end_date_time = Time.parse(end_date_time)

      cost = 0
      # if info.css("p")[2].children.children[1].text.strip == ""
      #   cost = info.css("p")[2].children.children.children.text.strip
      #   if cost == "FREE"
      #     cost = 0
      #   end
      # else
      #   cost = info.css("p")[2].children.children[1].text.strip
      #   cost[0] = ''
      # end

      website = ""
      # if info.css("p")[4].children.children[1] == nil
      #   website = "not found"
      # else
      #   website = info.css("p")[4].children.children[1].text
      # end

      recurring = true

      Event.create!(
        name: name,
        venue: venue,
        address: address_full,
        start_date_time: start_date_time,
        end_date_time: end_date_time,
        cost: cost,
        website: website,
        description: description,
        recurring: recurring
      )
    end
  end

end
