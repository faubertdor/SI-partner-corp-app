class AuthorizedRepresentativesController < ApplicationController
  before_action :set_authorized_representative, only: [:show, :edit, :update, :destroy]

  # GET /authorized_representatives/1
  # GET /authorized_representatives/1.json
  def show
  end

  # GET /authorized_representatives/new
  def new
    @authorized_representative = current_user.authorized_representatives.build
  end

  # GET /authorized_representatives/1/edit
  def edit
  end

  # POST /authorized_representatives
  # POST /authorized_representatives.json
  def create
    @authorized_representative = current_user.authorized_representatives
                                             .build(authorized_representative_params)

    respond_to do |format|
      if @authorized_representative.save
        format.html { redirect_to corporate_applications_personnel_url,
                      notice: 'Authorized representative was successfully created.' }
        format.json { render :show, status: :created, location: @authorized_representative }
      else
        format.html { render :new }
        format.json { render json: @authorized_representative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /authorized_representatives/1
  # PATCH/PUT /authorized_representatives/1.json
  def update
    respond_to do |format|
      if @authorized_representative.update(authorized_representative_params)
        format.html { redirect_to corporate_applications_personnel_url,
                      notice: 'Authorized representative was successfully updated.' }
        format.json { render :show, status: :ok, location: @authorized_representative }
      else
        format.html { render :edit }
        format.json { render json: @authorized_representative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authorized_representatives/1
  # DELETE /authorized_representatives/1.json
  def destroy
    @authorized_representative.destroy
    respond_to do |format|
      format.html { redirect_to corporate_applications_personnel_url,
                    notice: 'Authorized representative was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_authorized_representative
      @authorized_representative = current_user.authorized_representatives
                                               .find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def authorized_representative_params
      params.require(:authorized_representative)
            .permit(:full_legal_name, :email, :title, :dob, :street_address,
                    :city, :state, :country, :zip_code)
    end
end
