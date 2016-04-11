class CorporateApplicationsController < ApplicationController
  before_action :set_application_data, only: [:review, :submit]
  skip_before_action :authenticate_user!, only: [:index, :about, :help, :completed]
    
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
    @officers = current_user.officers.all

    # Set progress bar
    @progress = 0.25
    if !@authorized_reps.empty?
      @progress += 0.1
    end

    if !@beneficial_owners.empty?
      @progress += 0.10
    end

    if !@officers.empty?
      @progress += 0.10
    end
  end
  
  def review
  end
  
  def submit
    corp_app_string = render_to_string(layout: 'layouts/pdf.html.erb',
                                       template: 'corporate_applications/_application_pdf.html.erb')
    pdf = WickedPdf.new.pdf_from_string(corp_app_string)
    CorporateApplicationMailer.send_application(current_user, pdf).deliver_now

    # Test code below
    #save_path = Rails.root.join('.','filename.pdf')
    #File.open(save_path, 'wb') do |file|
    #  file << pdf
    #end
    @user = User.find_by(id: current_user.id)
    @user.is_app_complete = true
    @user.save
    respond_to do |format|
      format.html { redirect_to corporate_applications_completed_url,
                    notice: 'Your application has been submitted.' }
    end   
  end
  
  def completed
    if user_signed_in?
      if current_user.is_app_complete == false
        redirect_to comporate_applications_review_url
      end
        sign_out current_user
    else
      redirect_to root_url
    end
  end
  
  private
    def set_application_data
      @general_info = current_user.general_info
      @authorized_reps = current_user.authorized_representatives.all
      @beneficial_owners = current_user.beneficial_owners.all
      @officers = current_user.officers.all
      @politically_exposed_people = current_user.politically_exposed_people.all
      @fx_and_payment = current_user.fx_and_payment
      if !current_user.authorized_representatives.all.nil?
        @signatories = current_user.authorized_representatives.first
      end
    end
end
