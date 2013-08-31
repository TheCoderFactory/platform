class HomeController < ApplicationController
  def index
    @announcements = Announcement.published
    @events = Event.published.future(Date.today)

  end
end
