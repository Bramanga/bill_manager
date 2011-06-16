class HomesController < ApplicationController
  respond_to :html, :js

  def index
    @homes = Home.all
    respond_with @homes
  end

  def show
    @home = Home.find(params[:id])
    respond_with @home
  end

  def new
    @home = Home.new
    respond_with @home
  end

  def edit
    @home = Home.find(params[:id])
  end

  def create
    @home = Home.new(params[:home])
    if @home.save
      respond_with @home, :notice => 'Home was successfully created.'
    else
      render :action => "new"
    end
  end

  def update
    @home = Home.find(params[:id])
    if @home.update_attributes(params[:home])
      respond_with @home, :notice => 'Home was successfully updated.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @home = Home.find(params[:id])
    @home.destroy
    redirect_to(homes_url)
  end
end

