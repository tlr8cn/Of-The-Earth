class ApplicationMailer < ActionMailer::Base
  default from: 'stphotobot@gmail.com'
  layout 'mailer'

  def wedding_email
  	mail(to: 'woahow@gmail.com', subject: 'Wedding Email')
  end
end
