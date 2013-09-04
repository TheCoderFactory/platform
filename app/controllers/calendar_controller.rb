class CalendarController < ApplicationController
  def index
    @future_events = Event.published.future(Date.today)
    @events = Event.published
  end
end
