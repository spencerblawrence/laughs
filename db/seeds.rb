# Event.create!(name: "Comedy Sundays @ The Green Briar", description: "", start_date_time: "2019-02-03 20:00:00 -0500", end_date_time: "2019-02-03 22:00:00 -0500", location: "The Green Briar Pub, 304 Washington St, Brighton, MA, 02135", cost: "FREE", website: "http://www.greenbriarpub.com/event-calendar/comedy-sundays-8-pm", recurring: true)
#
#
# class EventsController
#
#   def index
#     @non_events = Event.where(recurring: false)
#     # recurring_events = @events.map { |event| event.recurring == true}
#     @recurring_events = Event.where(recurring: true)
#     update_recurring_events(@recurring_events)
#     @events = @non_events + @recurring_events
#
#
#
#   end
#
#   private
#
#   def update_recurring_events(recurring_events)
#     recurring_events.each do |event|
#       if event.start_date_time < Date.today
#         # increase the date by 7
#       end
#     end
#   end
#
#
#
# end





Event.create!(name: "Comedy Sundays @ The Green Briar", description: "", start_date_time: "2019-02-03 20:00:00 -0500", end_date_time: "2019-02-03 22:00:00 -0500", location: "The Green Briar Pub, 304 Washington St, Brighton, MA, 02135", cost: "FREE", website: "http://www.greenbriarpub.com/event-calendar/comedy-sundays-8-pm")

Event.create!(name: "Liquid Courage Comedy Club", description: "", start_date_time: "2019-02-03 20:00:00 -0500", end_date_time: "2019-02-03 23:00:00 -0500", location: "Somerville Brewing Company Brewery + Taproom, 15 Ward St, Somerville, MA, 02143", cost: "$5", website: "https://www.facebook.com/liquidcouragecomedy/?fb_dtsg_ag=AdyAGxJo-FFv6_Vsqd3deiUWcr4Zfy6HVRxRfCAJJMLgAg%3AAdyfGRtAsnZW1mCywQMYdANSt_jMN046f-UW2rqODNSZ_A")

Event.create!(name: "Midway Or The Highway Comedy", description: "", start_date_time: "2019-02-03 21:00:00 -0500", end_date_time: "2019-02-03 23:59:00 -0500", location: "Midway Cafe, 3496 Washington Street, Jamaica Plain, MA, 02130", cost: "FREE", website: "http://www.midwayorthehighway.com")

Event.create!(name: "McGreevy's FREE COMEDY: Every Monday & Tuesday", description: "", start_date_time: "2019-02-04 20:00:00 -0500", end_date_time: "2019-02-04 21:30:00 -0500", location: "McGreevy's Boston, 911 Boylston St., Boston, MA, 02115", cost: "FREE", website: "http://www.mcgreevysboston.com/comedy")

Event.create!(name: "The Mendoza Line Comedy Show", description: "", start_date_time: "2019-02-09 21:00:00 -0500", end_date_time: "2019-02-09 23:00:00 -0500", location: "Dugout Cafe, 722 Commonwealth Avenue, Boston, MA, 02215", cost: "$5", website: "https://www.eventbrite.com/e/the-mendoza-line-comedy-show-tickets-15228587114")

Event.create!(name: "Stand-Up Comedy at the 730 Tavern!", description: "", start_date_time: "2019-02-06 20:00:00 -0500", end_date_time: "2019-02-06 22:00:00 -0500", location: "730 Tavern, Kitchen, and Patio, 730 Massachusetts Avenue,  Cambridge , MA, 02139", cost: "FREE", website: "https://www.eventbrite.com/myevent?eid=39574058073")

Event.create!(name: "Thunderbar Comedy Open Mic", description: "", start_date_time: "2019-02-07 18:00:00 -0500", end_date_time: "2019-02-07 22:30:00 -0500", location: "Thunderbar Comedy/Basement of Wonder Bar, 186 Harvard Ave, Allston, MA, 02134", cost: "FREE", website: "https://www.facebook.com/ThunderbarComedy/?ref=bookmarks&qsefr=1")

Event.create!(name: "Hideout Comedy at The White Bull Tavern! 7.30pm", description: "", start_date_time: "2019-02-08 19:30:00 -0500", end_date_time: "2019-02-08 21:30:00 -0500", location: "The White Bull Tavern, 1 Union Street, Boston, MA, 02108", cost: "$10", website: "https://www.eventbrite.com/e/hideout-comedy-the-white-bull-friday-730pm-tickets-54826427320?aff=ebdssbdestsearch")

Event.create!(name: "Hideout Comedy at The White Bull Tavern! 7pm", description: "", start_date_time: "2019-02-09 19:00:00 -0500", end_date_time: "2019-02-09 21:00:00 -0500", location: "The White Bull Tavern, 1 Union Street, Boston, MA, 02108", cost: "$10", website: "https://www.eventbrite.com/e/hideout-comedy-the-white-bull-saturday-700pm-tickets-54826353098?aff=ebdssbdestsearch")

Event.create!(name: "Comedy at Bill's Bar (Free! Wednesday, 7:30PM)", description: "", start_date_time: "2019-02-06 19:30:00 -0500", end_date_time: "2019-02-06 21:00:00 -0500", location: "Bill's Bar, 5 Lansdowne Street, Boston, MA, 02215", cost: "FREE", website: "https://billsbarweekdays.eventbrite.com/?aff=BillsBostonCalendar")

Event.create!(name: "Comedy at Bill's Bar ($10 Friday, 8PM)", description: "", start_date_time: "2019-02-08 20:00:00 -0500", end_date_time: "2019-02-08 21:30:00 -0500", location: "Bill's Bar, 5 Lansdowne Street, Boston, MA, 02215", cost: "$10", website: "https://billsbarcomedy.eventbrite.com/?aff=BillsBostonCalendar")

Event.create!(name: "Comedy at Bill's Bar ($10 Saturday, 8PM)", description: "", start_date_time: "2019-02-09 20:00:00 -0500", end_date_time: "2019-02-09 21:30:00 -0500", location: "Bill's Bar, 5 Lansdowne Street, Boston, MA, 02215", cost: "$10", website: "https://billsbarcomedy.eventbrite.com/?aff=BillsBostonCalendar")

Event.create!(name: "Nick's Comedy Stop", description: "", start_date_time: "2019-02-08 20:00:00 -0500", end_date_time: "2019-02-08 22:00:00 -0500", location: "Nick's Comedy Stop, 100 Warrenton St, Boston, MA, 02116", cost: "$20", website: "http://bit.ly/nicks-comedy-stop")

Event.create!(name: "Nick's Comedy Stop", description: "", start_date_time: "2019-02-09 20:00:00 -0500", end_date_time: "2019-02-09 22:00:00 -0500", location: "Nick's Comedy Stop, 100 Warrenton St, Boston, MA, 02116", cost: "$20", website: "http://bit.ly/nicks-comedy-stop")
