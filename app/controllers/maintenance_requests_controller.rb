class MaintenanceRequestsController < ApplicationController
  before_action :authenticate

  def index
    @maintenance_requests = MaintenanceRequest.all.order(created_at: "DESC")
  end

  def new
    @maintenance_request = MaintenanceRequest.new
  end

  def create
    @maintenance_request = MaintenanceRequest.new(maintenance_request_params)
    if @maintenance_request.save
      return redirect_to maintenance_requests_path
    end

    render :new
  end

  def show
    @maintenance_request = MaintenanceRequest.find_by_id(params[:id])
  end

  def edit
    @maintenance_request = MaintenanceRequest.find_by_id(params[:id])
  end

  def update
    @maintenance_request = MaintenanceRequest.find(params[:id])
    if @maintenance_request.update_attributes(maintenance_request_params)
      return redirect_to maintenance_request_path(@maintenance_request)
    end

    render :edit
  end

  def destroy
    @maintenance_request = MaintenanceRequest.find(params[:id])
    @maintenance_request.destroy
    redirect_to maintenance_requests_path
  end

  private

  def maintenance_request_params
    params.require(:maintenance_request).permit(
      :user_id,
      :resident_id,
      :address_id,
      :request_status_id,
      :request_category_id,
      :request_number,
      :message,
      :content,
      :completed_on
    )
  end
end
