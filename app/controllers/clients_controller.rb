class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = nil
    if client_params[:id].blank?
      @client = Client.new(client_params)
    else
      @client = Client.find(client_params[:id])
      @client.update(client_params)
    end

    if @client.valid?
      if @client.save
        redirect_to action: 'index'
      else
        render 'new'
      end
    else
      render 'new'
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def deactivate
    @client = Client.find(params[:id])
    @client.is_active = false
    @client.save

    redirect_to action: 'index'
  end

  def activate
    @client = Client.find(params[:id])
    @client.is_active = true
    @client.save

    redirect_to action: 'index'
  end

  private
  def client_params
    params.require(:client).permit(:id, :full_name, :email, :tell, :cell)
  end
end
