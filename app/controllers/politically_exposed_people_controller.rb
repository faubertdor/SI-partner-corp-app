class PoliticallyExposedPeopleController < ApplicationController
  before_action :set_politically_exposed_person, only: [:show, :edit, :update, :destroy]

  # GET /politically_exposed_people
  # GET /politically_exposed_people.json
  def index
    @politically_exposed_people = current_user.politically_exposed_people.all
    
    # Set progress bar
    @progress = 0.55
    if !@politically_exposed_people.empty?
      @progress += 0.20
    end
  end

  # GET /politically_exposed_people/1
  # GET /politically_exposed_people/1.json
  def show
  end

  # GET /politically_exposed_people/new
  def new
    @politically_exposed_person = current_user.politically_exposed_people.build
  end

  # GET /politically_exposed_people/1/edit
  def edit
  end

  # POST /politically_exposed_people
  # POST /politically_exposed_people.json
  def create
    @politically_exposed_person = current_user.politically_exposed_people
                                              .build(politically_exposed_person_params)

    respond_to do |format|
      if @politically_exposed_person.save
        format.html { redirect_to politically_exposed_people_url,
                      notice: 'Politically exposed person was successfully created.' }
        format.json { render :show, status: :created, location: @politically_exposed_person }
      else
        format.html { render :new }
        format.json { render json: @politically_exposed_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /politically_exposed_people/1
  # PATCH/PUT /politically_exposed_people/1.json
  def update
    respond_to do |format|
      if @politically_exposed_person.update(politically_exposed_person_params)
        format.html { redirect_to politically_exposed_people_url,
                      notice: 'Politically exposed person was successfully updated.' }
        format.json { render :show, status: :ok, location: @politically_exposed_person }
      else
        format.html { render :edit }
        format.json { render json: @politically_exposed_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /politically_exposed_people/1
  # DELETE /politically_exposed_people/1.json
  def destroy
    @politically_exposed_person.destroy
    respond_to do |format|
      format.html { redirect_to politically_exposed_people_url,
                    notice: 'Politically exposed person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_politically_exposed_person
      @politically_exposed_person = current_user.politically_exposed_people
                                                .find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def politically_exposed_person_params
      params.require(:politically_exposed_person)
            .permit(:name, :title, :position_held, :from, :to)
    end
end
