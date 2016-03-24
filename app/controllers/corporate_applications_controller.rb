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
    CorporateApplicationMailer.send_application(current_user, pdf).deliver_now
    @user = User.find_by(id: current_user.id)
    @user.is_app_complete = true
    @user.save
    respond_to do |format|
      format.html { redirect_to corporate_applications_completed_url,
                    notice: 'Your application has been submitted.' }
    end   
  end
  
  def completed
    if current_user.is_app_complete == false
      redirect_to comporate_applications_review_url
    end
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
