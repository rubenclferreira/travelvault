class DestiniesController < ApplicationController
  before_action :set_destiny, only: [:show, :edit, :update, :destroy]

  # GET /destinies
  # GET /destinies.json
  def index
    @destinies = Destiny.all
  end

  # GET /destinies/1
  # GET /destinies/1.json
  def show
  end

  # GET /destinies/new
  def new
    @destiny = Destiny.new
  end

  # GET /destinies/1/edit
  def edit
  end

  # POST /destinies
  # POST /destinies.json
  def create
    @destiny = Destiny.new(destiny_params)

    respond_to do |format|
      if @destiny.save
        format.html { redirect_to @destiny, notice: 'Destiny was successfully created.' }
        format.json { render :show, status: :created, location: @destiny }
      else
        format.html { render :new }
        format.json { render json: @destiny.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /destinies/1
  # PATCH/PUT /destinies/1.json
  def update
    respond_to do |format|
      if @destiny.update(destiny_params)
        format.html { redirect_to @destiny, notice: 'Destiny was successfully updated.' }
        format.json { render :show, status: :ok, location: @destiny }
      else
        format.html { render :edit }
        format.json { render json: @destiny.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /destinies/1
  # DELETE /destinies/1.json
  def destroy
    @destiny.destroy
    respond_to do |format|
      format.html { redirect_to destinies_url, notice: 'Destiny was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_destiny
      @destiny = Destiny.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def destiny_params
      params.require(:destiny).permit(:location, :date, :airline)
    end
end
