class CorporateApplicationsController < ApplicationController
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
  end
end
