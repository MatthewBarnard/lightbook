class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def edit
    @service = Service.find(params[:id])
  end

  def create
    @service = nil
    if service_params[:id].blank?
      @service = Service.new(service_params)
    else
      @service = Service.find(service_params[:id])
      @service.update(service_params)
    end

    if @service.valid?
      if @service.save
        redirect_to action: 'index'
      else
        render 'new'
      end
    else
      render 'new'
    end
  end

  def deactivate
    @service = Service.find(params[:id])
    @service.is_active = false
    @service.save

    redirect_to action: 'index'
  end

  def activate
    @service = Service.find(params[:id])
    @service.is_active = true
    @service.save
    redirect_to action: 'index'
  end

  private
  def service_params
    params.require(:service).permit(:id, :name, :price, :duration)
  end
end
