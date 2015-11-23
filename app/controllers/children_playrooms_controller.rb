class ChildrenPlayroomsController < ApplicationController
  before_filter :authenticate_user!, except: [:playrooms, :playroom_show]
  before_action :set_children_playroom, only: [:show, :edit, :update, :destroy, :playroom_show, :make_rating]

  def playrooms
    @children_playrooms = ChildrenPlayroom.all
  end

  def playroom_show
  end

  def make_rating
    if @children_playroom.rating > 0
      @children_playroom.rating = (@children_playroom.rating + params[:rating].to_i) / 2
    else
      @children_playroom.rating = params[:rating].to_i
    end
    @children_playroom.save!

    redirect_to({action: :playroom_show, id: @children_playroom.id}, notice: 'Parabéns, você avaliou essa brinquedoteca!')
  end

  # GET /children_playrooms
  # GET /children_playrooms.json
  def index
    @children_playrooms = ChildrenPlayroom.all
  end

  # GET /children_playrooms/1
  # GET /children_playrooms/1.json
  def show
  end

  # GET /children_playrooms/new
  def new
    @children_playroom = ChildrenPlayroom.new
  end

  # GET /children_playrooms/1/edit
  def edit
  end

  # POST /children_playrooms
  # POST /children_playrooms.json
  def create
    @children_playroom = ChildrenPlayroom.new(children_playroom_params)

    respond_to do |format|
      if @children_playroom.save
        format.html { redirect_to @children_playroom, notice: 'Children playroom was successfully created.' }
        format.json { render :show, status: :created, location: @children_playroom }
      else
        format.html { render :new }
        format.json { render json: @children_playroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /children_playrooms/1
  # PATCH/PUT /children_playrooms/1.json
  def update
    respond_to do |format|
      if @children_playroom.update(children_playroom_params)
        format.html { redirect_to @children_playroom, notice: 'Children playroom was successfully updated.' }
        format.json { render :show, status: :ok, location: @children_playroom }
      else
        format.html { render :edit }
        format.json { render json: @children_playroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /children_playrooms/1
  # DELETE /children_playrooms/1.json
  def destroy
    @children_playroom.destroy
    respond_to do |format|
      format.html { redirect_to children_playrooms_url, notice: 'Children playroom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_children_playroom
      @children_playroom = ChildrenPlayroom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def children_playroom_params
      params.require(:children_playroom).permit(:name, :description, :rating, :price, :address, :photo, :phone, :localization, toys: [])
    end
end
