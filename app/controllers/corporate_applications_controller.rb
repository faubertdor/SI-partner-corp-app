class CorporateApplicationsController < ApplicationController
  before_action :set_application_data, only: [:review, :submit]
  skip_before_action :authenticate_user!, only: [:index, :about, :help]
    
  def index
    if user_signed_in?
      redirect_to new_general_info_url
    end
  end

  def about
  end

  def help
  end
  
  def personnel
    @authorized_reps = current_user.authorized_representatives.all
    @beneficial_owners = current_user.beneficial_owners.all
    @directors = current_user.directors.all
    @officers = current_user.officers.all
  end
  
  def review
  end
  
  def submit
    corp_app_string = render_to_string(template: 'corporate_applications/_pdf_application.html.erb')
    pdf = WickedPdf.new.pdf_from_string(corp_app_string)
    save_path = Rails.root.join('.','facypdf.pdf')
    File.open(save_path, 'wb') do |file|
      file << pdf
    end
    CorporateApplicationMailer.send_application(pdf).deliver_now
    redirect_to root_url
  end
    
  private
    def set_application_data
      @general_info = current_user.general_info
      @authorized_reps = current_user.authorized_representatives.all
      @beneficial_owners = current_user.beneficial_owners.all
      @directors = current_user.directors.all
      @officers = current_user.officers.all
      @politically_exposed_people = current_user.politically_exposed_people.all
      @fx_and_payment = current_user.fx_and_payment
      @signatories = current_user.signatories.all
    end
end
