class EventsController < ApplicationController
  def index
  	@events = Event.all
  end

  def new
  	@event = Event.new
  end

  def create
  	@event = Event.new(event_params)
  	@event.user = current_user
  	@event.approved = false
  	@event.save!
  	redirect_to events_path
  end

  def show
  end

  private
  	def event_params
  		params.require(:event).permit(:title, :description, :date, :location, :host, :event_type_id)
  	end
end
