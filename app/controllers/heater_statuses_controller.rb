class HeaterStatusesController < ApplicationController
  def destroy
    @heater = Heater.find(params[:heater_id])
    @status = @heater.heater_statuses.find(params[:id])
    @status.destroy
    redirect_to heater_path(params[:heater_id])
  end
end
