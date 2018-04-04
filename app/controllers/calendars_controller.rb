class CalendarsController < ApplicationController
  def new
    @calendar = Calendar.new
  end

def show
  @calendar = Calendar.find params[:id]
end

def create
  @calendar = Calendar.new calendar_params
    @calendar.save
      redirect_to @calendar
end

private
  def calendar_params
    params.require(:calendar).permit(:destination, :arrival_date, :departure_date)
  end

end
