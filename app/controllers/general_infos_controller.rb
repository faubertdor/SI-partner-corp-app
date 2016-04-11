class GeneralInfosController < ApplicationController
  before_action :set_general_info, only: [:show, :edit, :update, :destroy]

  # GET /general_infos/1
  # GET /general_infos/1.json
  def show
  end

  # GET /general_infos/new
  def new
    if current_user.general_info.nil?
      @general_info = current_user.build_general_info
      @general_info.cell_number = "+1"
      @general_info.landline_number = "+1"
      @general_info.website = "http://"
    else
      redirect_to current_user.general_info
    end
  end

  # GET /general_infos/1/edit
  def edit
  end

  # POST /general_infos
  # POST /general_infos.json
  def create
    @general_info = current_user.build_general_info(general_info_params)

    respond_to do |format|
      if @general_info.save
        format.html { redirect_to @general_info,
                      notice: 'General information was successfully added.' }
        format.json { render :show, status: :created, location: @general_info }
      else
        format.html { render :new }
        format.json { render json: @general_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /general_infos/1
  # PATCH/PUT /general_infos/1.json
  def update
    respond_to do |format|
      if @general_info.update(general_info_params)
        format.html { redirect_to @general_info,
                      notice: 'General information was successfully updated.' }
        format.json { render :show, status: :ok, location: @general_info }
      else
        format.html { render :edit }
        format.json { render json: @general_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /general_infos/1
  # DELETE /general_infos/1.json
  def destroy
    @general_info.destroy
    respond_to do |format|
      format.html { redirect_to general_infos_url,
                    notice: 'General information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_general_info
      @general_info = current_user.general_info
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def general_info_params
      params.require(:general_info)
            .permit(:corporate_name, :trade_name, :country_of_inc, :street_address,
                    :city, :state, :zip_code, :country, :landline_number, :cell_number,
                    :email, :state_of_inc, :tax_id, :nature_of_business, :website)
    end
end
