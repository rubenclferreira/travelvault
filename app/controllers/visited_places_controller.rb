class VisitedPlacesController < ApplicationController
  before_action :set_visited_place, only: [:show, :edit, :update, :destroy]

  # GET /visited_places
  # GET /visited_places.json
  def index
    @visited_places = VisitedPlace.all
  end

  # GET /visited_places/1
  # GET /visited_places/1.json
  def show
  end

  # GET /visited_places/new
  def new
    @visited_place = VisitedPlace.new
  end

  # GET /visited_places/1/edit
  def edit
  end

  # POST /visited_places
  # POST /visited_places.json
  def create
    @visited_place = VisitedPlace.new(visited_place_params)

    respond_to do |format|
      if @visited_place.save
        format.html { redirect_to @visited_place, notice: 'Visited place was successfully created.' }
        format.json { render :show, status: :created, location: @visited_place }
      else
        format.html { render :new }
        format.json { render json: @visited_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visited_places/1
  # PATCH/PUT /visited_places/1.json
  def update
    respond_to do |format|
      if @visited_place.update(visited_place_params)
        format.html { redirect_to @visited_place, notice: 'Visited place was successfully updated.' }
        format.json { render :show, status: :ok, location: @visited_place }
      else
        format.html { render :edit }
        format.json { render json: @visited_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visited_places/1
  # DELETE /visited_places/1.json
  def destroy
    @visited_place.destroy
    respond_to do |format|
      format.html { redirect_to visited_places_url, notice: 'Visited place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visited_place
      @visited_place = VisitedPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visited_place_params
      params.require(:visited_place).permit(:Place, :Price)
    end
end
