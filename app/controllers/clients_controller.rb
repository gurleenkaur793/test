class ClientsController < ApplicationController
  layout false
  
  def index
    @clients = Client.order("name ASC")
  end

  def new
    @client = Client.new()
  end
  def create
    @client = Client.new(client_param)
    if @client.save
      redirect_to(:action=> 'index')
    else
      render ('new')
    end
  end


  def show
    @client = Client.find(params[:id])
  end


  def edit
  end

  def delete
  end

  private
   def client_param
    params.require(:client).permit(:name, :address, :designation)
   end


end
    