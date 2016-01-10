class FrontEndController < ApplicationController
  layout 'frontend'
  def index

  end

  def book
    @current_time = Time.now.strftime('%H:%M')
    @current_date = Time.now.strftime('%d-%m-%Y')
    @display_date = Time.now.strftime('<strong>%A</strong> <small>%d %B %Y</small>').html_safe
    @display_time = Time.now.strftime('<strong>%I:%M</strong> <small>%p</small>').html_safe
  end

  def check_availability
    current_date = Time.strptime(params[:check_availability][:date],'%Y-%m-%d')
    current_booking = Booking.where(date_requested: current_date, time_requested: params[:check_availability][:time])
    if current_booking.count == 0
      render plain: 'true'
    else
      render plain: 'false'
    end
  end
end
