class ResidentsController < ApplicationController
  def index
    @residents = Resident.all
  end

  def show
    @resident = Resident.find_by_id(params[:id])
  end

  def new
    @resident = Resident.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
