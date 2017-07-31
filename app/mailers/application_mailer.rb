class ApplicationMailer < ActionMailer::Base
  default from: 'stphotobot@gmail.com'
  layout 'mailer'

  def wedding_email(weddingLocation, receptionLocation, date, brideName, groomName, mailingAddress, email, phone, engagement, bridal, about)
  	@weddingLocation = weddingLocation
  	@receptionLocation = receptionLocation
  	@date = date
  	@mailingAddress = mailingAddress
  	@email = email
  	@phone = phone

  	@engagement = "No."
	  @bridal = "No."

  	if engagement == "on"
  		@engagement = "Yes."
  	end

  	if bridal == "on"
  		@bridal = "Yes."
  	end

	  @about = about
  	
  	mail(to: 'woahow@gmail.com', subject: "#{brideName} and #{groomName}'s wedding")
  end


  def moment_email(momentName, clientName, email, phone, about)
    @momentName = momentName
    @clientName = clientName
    @email = email
    @phone = phone
    @about = about

    mail(to: 'woahow@gmail.com', subject: "#{clientName}'s Beautiful Moment")
  end

end
