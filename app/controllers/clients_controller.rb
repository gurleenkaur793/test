class ClientsController < ApplicationController
  layout false
  
  def index
    @clients = Client.order("name ASC")
  end

  def new
  end

  def show
    @client = Client.find(params[:id])
  end

  def edit
  end

  def delete
  end
end
