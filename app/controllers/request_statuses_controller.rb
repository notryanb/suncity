class RequestStatusesController < ApplicationController
  before_action :authenticate

  def index
    @request_statuses = RequestStatus.all
  end

  def show
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
