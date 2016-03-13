class CorporatePersonnelsController < ApplicationController
  before_action :set_corporate_personnel, only: [:show, :edit, :update, :destroy]

  # GET /corporate_personnels
  # GET /corporate_personnels.json
  def index
    @corporate_personnels = CorporatePersonnel.all
  end

  # GET /corporate_personnels/1
  # GET /corporate_personnels/1.json
  def show
  end

  # GET /corporate_personnels/new
  def new
    @corporate_personnel = CorporatePersonnel.new
  end

  # GET /corporate_personnels/1/edit
  def edit
  end

  # POST /corporate_personnels
  # POST /corporate_personnels.json
  def create
    @corporate_personnel = CorporatePersonnel.new(corporate_personnel_params)

    respond_to do |format|
      if @corporate_personnel.save
        format.html { redirect_to @corporate_personnel, notice: 'Corporate personnel was successfully created.' }
        format.json { render :show, status: :created, location: @corporate_personnel }
      else
        format.html { render :new }
        format.json { render json: @corporate_personnel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /corporate_personnels/1
  # PATCH/PUT /corporate_personnels/1.json
  def update
    respond_to do |format|
      if @corporate_personnel.update(corporate_personnel_params)
        format.html { redirect_to @corporate_personnel, notice: 'Corporate personnel was successfully updated.' }
        format.json { render :show, status: :ok, location: @corporate_personnel }
      else
        format.html { render :edit }
        format.json { render json: @corporate_personnel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /corporate_personnels/1
  # DELETE /corporate_personnels/1.json
  def destroy
    @corporate_personnel.destroy
    respond_to do |format|
      format.html { redirect_to corporate_personnels_url, notice: 'Corporate personnel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corporate_personnel
      @corporate_personnel = CorporatePersonnel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def corporate_personnel_params
      params.fetch(:corporate_personnel, {})
    end
end
