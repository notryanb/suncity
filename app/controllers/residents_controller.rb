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
    @resident = Resident.create(resident_params)

    if @resident.save
      return redirect_to :root
    end

    render :new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def resident_params
    params.require(:resident).permit(
      :first_name,
      :last_name,
      :email,
      :address,
      :home_phone,
      :cell_phone
    )

  end
end
