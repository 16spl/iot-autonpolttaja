class Api::V1::HeaterStatusesController < Api::V1::BaseController

  def create
    heater = Heater.find(params[:heater_id])
    heater_status = heater.heater_statuses.new(heater_status_params)
    if heater_status.valid?
      heater_status.save
      head 201
    end
  end

  private
    def heater_status_params
      params.require(:heater_status).permit(:tempature, :last_seen, :status)
    end
end
