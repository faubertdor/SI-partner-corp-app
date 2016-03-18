class CorporateApplicationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.corporate_application_mailer.send_application.subject
  #
  
  # Send Complete Application to both PeopleHedge and the Customer
  def send_application(user, pdf)
    @user = user  
    attachments["#{@user.id}-application.pdf"] = pdf
    mail(from: 'example@peoplehedge.com',
         to: [user.email, 'example@peoplehedge.com'],
         subject: 'PeopleHedge Corporate Application') do |format|

      format.html { render layout: 'layouts/mailer' }
      format.text
    end
  end
end