class ChildrenEventsController < ApplicationController
  before_action :set_children_event, only: [:show, :edit, :update, :destroy, :event_show]

  def events
    @children_events = ChildrenEvent.all
  end

  def event_show
  end

  # GET /children_events
  # GET /children_events.json
  def index
    @children_events = ChildrenEvent.all
  end

  # GET /children_events/1
  # GET /children_events/1.json
  def show
  end

  # GET /children_events/new
  def new
    @children_event = ChildrenEvent.new
  end

  # GET /children_events/1/edit
  def edit
  end

  # POST /children_events
  # POST /children_events.json
  def create
    @children_event = ChildrenEvent.new(children_event_params)

    respond_to do |format|
      if @children_event.save
        format.html { redirect_to @children_event, notice: 'Children event was successfully created.' }
        format.json { render :show, status: :created, location: @children_event }
      else
        format.html { render :new }
        format.json { render json: @children_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /children_events/1
  # PATCH/PUT /children_events/1.json
  def update
    respond_to do |format|
      if @children_event.update(children_event_params)
        format.html { redirect_to @children_event, notice: 'Children event was successfully updated.' }
        format.json { render :show, status: :ok, location: @children_event }
      else
        format.html { render :edit }
        format.json { render json: @children_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /children_events/1
  # DELETE /children_events/1.json
  def destroy
    @children_event.destroy
    respond_to do |format|
      format.html { redirect_to children_events_url, notice: 'Children event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_children_event
      @children_event = ChildrenEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def children_event_params
      params.require(:children_event).permit(:title, :description, :rating, :price, :date_time, :phone, :localization, :photo, :address)
    end
end
