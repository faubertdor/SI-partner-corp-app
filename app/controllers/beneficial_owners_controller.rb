class BeneficialOwnersController < ApplicationController
  before_action :set_beneficial_owner, only: [:show, :edit, :update, :destroy]

  # GET /beneficial_owners/1
  # GET /beneficial_owners/1.json
  def show
  end

  # GET /beneficial_owners/new
  def new
    @beneficial_owner = current_user.beneficial_owners.build
  end

  # GET /beneficial_owners/1/edit
  def edit
  end

  # POST /beneficial_owners
  # POST /beneficial_owners.json
  def create
    @beneficial_owner = current_user.beneficial_owners
                                    .build(beneficial_owner_params)

    respond_to do |format|
      if @beneficial_owner.save
        format.html { redirect_to corporate_applications_personnel_url,
                      notice: 'Beneficial owner was successfully created.' }
        format.json { render :show, status: :created, location: @beneficial_owner }
      else
        format.html { render :new }
        format.json { render json: @beneficial_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beneficial_owners/1
  # PATCH/PUT /beneficial_owners/1.json
  def update
    respond_to do |format|
      if @beneficial_owner.update(beneficial_owner_params)
        format.html { redirect_to corporate_applications_personnel_url,
                      notice: 'Beneficial owner was successfully updated.' }
        format.json { render :show, status: :ok, location: @beneficial_owner }
      else
        format.html { render :edit }
        format.json { render json: @beneficial_owner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beneficial_owners/1
  # DELETE /beneficial_owners/1.json
  def destroy
    @beneficial_owner.destroy
    respond_to do |format|
      format.html { redirect_to corporate_applications_personnel_url,
                    notice: 'Beneficial owner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beneficial_owner
      @beneficial_owner = current_user.beneficial_owners.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beneficial_owner_params
      params.require(:beneficial_owner)
            .permit(:full_legal_name, :citizenship, :ownership_percentage,
                    :street_address, :city, :state, :country, :zip_code,
                    :no_ind_own_25_or_more, :no_other_own_25_or_more, :owned_by_pub_trade)
    end
end
