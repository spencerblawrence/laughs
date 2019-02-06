require 'spec_helper'

describe Event do
  it { should have_valid(:name).when("Comedy Sundays @ The Green Briar") }
  it { should_not have_valid(:name).when(nil, "") }

  it { should have_valid(:start_date_time).when("2019-02-03 20:00:00 -0500") }
  it { should_not have_valid(:start_date_time).when(nil, "") }

  it { should have_valid(:location).when("Somerville Brewing Company Brewery + Taproom, 15 Ward St, Somerville, MA, 02143") }
  it { should_not have_valid(:location).when(nil, "") }

  it { should have_valid(:cost).when("FREE") }
  it { should_not have_valid(:cost).when(nil, "") }

  it { should have_valid(:website).when("http://www.greenbriarpub.com/event-calendar/comedy-sundays-8-pm") }
  it { should_not have_valid(:website).when(nil, "") }
  it { should_not have_valid(:website).when("greenbriarpub.com/event-calendar/comedy-sundays-8-pm") }
  it { should_not have_valid(:website).when("www.greenbriarpub.com/event-calendar/comedy-sundays-8-pm") }
end
