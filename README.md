# README

Laughs is the Breakable Toy I built as my capstone project for Launch Academy, a 10-week intensive coding bootcamp in Boston, MA. As a fan of standup comedy, I built Laughs to help connect the standup community. Laughs caters to both fans of standup, as well as comedians.

http://laughs.herokuapp.com/

On Laughs, users can find shows using various filters (time, cost), see shows displayed on a map, and RSVP to a show. A user can see more info about a show, including its lineup. By clicking the comedian in the lineup, a user can learn more about that comedian, and see other shows they have coming up. When a new user signs up, if they sign up as a comedian, they are taken to a new comedian profile page which lets them info such as headshot, description, etc. They are then included in the Laughs Comedian Database.

Laughs was built using Ruby on Rails backend, ReactJS frontend (mostly), and a PostgreSQL database. Laughs uses a variety of gems, libraries, plugins, etc. including:
- react-google-maps (to integrate Google Maps)
- react-day-picker (for day select / calendar functionality)
- GeoKit Rails gem (to get lat/long from an address string)
- MomentJS (to format time on the front end)
- Nokogiri gem (for web-scraping)
- Foundation 6 (for styling, along with custom CSS/SCSS)

To get Laughs up and running on your local system, please do the following:
- git clone the repo (master branch)
- to install dependencies: run `bundle install` and `yarn install`
- to set up the database: run `bundle exec rake db:setup && db:migrate && db:seed`
- to start the server: run `rails s` and in a separate CLI tab, `yarn start`

Some other notes about the projects:
- Ruby version = 2.4.5
- The timezone is set to EST in config/application.rb

