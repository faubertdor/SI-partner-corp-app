class CorporateApplicationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.corporate_application_mailer.send_application.subject
  #
  def send_application(pdf)
    recipients      "example@peoplehedge.com"
    subject         "PeopleHedge Corporate Application"
    from            "example@peoplehedge.com"
    content_type    "multipart/alternative"
    
    attachment "application/pdf" do |a|
      a.body = pdf
    end
  end
end