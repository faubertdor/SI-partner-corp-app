# Preview all emails at http://localhost:3000/rails/mailers/corporate_application_mailer
class CorporateApplicationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/corporate_application_mailer/send_application
  def send_application
    CorporateApplicationMailer.send_application
  end

end
