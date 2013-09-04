class AnnouncementMailer < ActionMailer::Base
  default from: "The Coder Factory <pete@thecoderfactory.com>"

  def announcement_email(announcement)
  	@announcement = announcement
  	@students = User.with_role :student
	@student_emails = @students.map { |u| u.email }
	mail(:to => @student_emails, :subject => "The Coder Factory Announcement: " + announcement.title)
  end
end
