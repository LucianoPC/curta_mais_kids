class ChildrenPlacesController < ApplicationController
  before_filter :authenticate_user!, except: [:places, :place_show]
  before_action :set_children_place, only: [:show, :edit, :update, :destroy, :place_show, :make_rating]

  def places
    @children_places = ChildrenPlace.all
  end

  def place_show
  end

  def make_rating
    @children_place.rating = (@children_place.rating + params[:rating].to_i) / 2
    @children_place.save!

    redirect_to({action: :place_show, id: @children_place.id}, notice: 'Parabéns, você avaliou esse lugar!')
  end

  # GET /children_places
  # GET /children_places.json
  def index
    @children_places = ChildrenPlace.all
  end

  # GET /children_places/1
  # GET /children_places/1.json
  def show
  end

  # GET /children_places/new
  def new
    @children_place = ChildrenPlace.new
  end

  # GET /children_places/1/edit
  def edit
  end

  # POST /children_places
  # POST /children_places.json
  def create
    @children_place = ChildrenPlace.new(children_place_params)

    respond_to do |format|
      if @children_place.save
        format.html { redirect_to @children_place, notice: 'Children place was successfully created.' }
        format.json { render :show, status: :created, location: @children_place }
      else
        format.html { render :new }
        format.json { render json: @children_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /children_places/1
  # PATCH/PUT /children_places/1.json
  def update
    respond_to do |format|
      if @children_place.update(children_place_params)
        format.html { redirect_to @children_place, notice: 'Children place was successfully updated.' }
        format.json { render :show, status: :ok, location: @children_place }
      else
        format.html { render :edit }
        format.json { render json: @children_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /children_places/1
  # DELETE /children_places/1.json
  def destroy
    @children_place.destroy
    respond_to do |format|
      format.html { redirect_to children_places_url, notice: 'Children place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_children_place
      @children_place = ChildrenPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def children_place_params
      params.require(:children_place).permit(:name, :description, :rating, :price, :address, :photo, :phone, :localization)
    end
end
