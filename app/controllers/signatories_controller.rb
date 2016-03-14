class SignatoriesController < ApplicationController
  before_action :set_signatory, only: [:show, :edit, :update, :destroy]

  # GET /signatories
  # GET /signatories.json
  def index
    @signatories = current_user.signatories.all
  end

  # GET /signatories/1
  # GET /signatories/1.json
  def show
  end

  # GET /signatories/new
  def new
    @signatory = current_user.signatories.build
  end

  # GET /signatories/1/edit
  def edit
  end

  # POST /signatories
  # POST /signatories.json
  def create
    @signatory = current_user.signatories.build(signatory_params)

    respond_to do |format|
      if @signatory.save
        format.html { redirect_to signatories_url,
                      notice: 'Signatory was successfully created.' }
        format.json { render :show, status: :created, location: @signatory }
      else
        format.html { render :new }
        format.json { render json: @signatory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /signatories/1
  # PATCH/PUT /signatories/1.json
  def update
    respond_to do |format|
      if @signatory.update(signatory_params)
        format.html { redirect_to signatories_url,
                      notice: 'Signatory was successfully updated.' }
        format.json { render :show, status: :ok, location: @signatory }
      else
        format.html { render :edit }
        format.json { render json: @signatory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /signatories/1
  # DELETE /signatories/1.json
  def destroy
    @signatory.destroy
    respond_to do |format|
      format.html { redirect_to signatories_url,
                    notice: 'Signatory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_signatory
      @signatory = current_user.signatories.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def signatory_params
      params.require(:signatory)
            .permit(:full_legal_name, :title, :dob, :street_address,
                    :city, :state, :country, :zip_code)
    end
end
