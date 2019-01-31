class SeasController < ApplicationController
  before_action :set_sea, only: [:show, :edit, :update, :destroy]

  # GET /seas
  # GET /seas.json
  def index
    @seas = Sea.all
  end

  # GET /seas/1
  # GET /seas/1.json
  def show
  end

  # GET /seas/new
  def new
    @sea = Sea.new
  end

  # GET /seas/1/edit
  def edit
  end

  # POST /seas
  # POST /seas.json
  def create
    @sea = Sea.new(sea_params)

    respond_to do |format|
      if @sea.save
        format.html { redirect_to @sea, notice: 'Sea was successfully created.' }
        format.json { render :show, status: :created, location: @sea }
      else
        format.html { render :new }
        format.json { render json: @sea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seas/1
  # PATCH/PUT /seas/1.json
  def update
    respond_to do |format|
      if @sea.update(sea_params)
        format.html { redirect_to @sea, notice: 'Sea was successfully updated.' }
        format.json { render :show, status: :ok, location: @sea }
      else
        format.html { render :edit }
        format.json { render json: @sea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seas/1
  # DELETE /seas/1.json
  def destroy
    @sea.destroy
    respond_to do |format|
      format.html { redirect_to seas_url, notice: 'Sea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sea

      @sea = Sea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sea_params

      params.require(:sea).permit(:name, :temperature, :bio, :image_url, :mood, :favorite_color, :scariest_creature, :has_mermaids)
    end
end
