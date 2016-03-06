class ClientsController < ApplicationController
  layout false
  
  def index
    @clients = Client.order("name ASC")
  end

  def new
  end

  def show
  end

  def edit
  end

  def delete
  end
end
