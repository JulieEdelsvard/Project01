class CalendarsController < ApplicationController
  def new
    @calendar = Calendar.new
  end

def show
  @calendar = Calendar.find params[:id]
end

def matches
end

def create
  @calendar = Calendar.new calendar_params
  @calendar.save
  @current_user.calendars << @calendar
  redirect_to @calendar
end

private
  def calendar_params
    params.require(:calendar).permit(:destination_id, :arrival_date, :departure_date)
  end

end
