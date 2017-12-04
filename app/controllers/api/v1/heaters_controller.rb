class Api::V1::HeatersController < Api::V1::BaseController
  def show
    heater = Heater.find(params[:id])

    render(json: Api::V1::HeaterSerializer.new(heater).to_json)
  end

  def create
    heater = Heater.new(heater_params)
    if heater.valid?
      heater.save
      head 201
    end
  end

  private
    def heater_params
      params.require(:heater).permit(:owner,:name)
    end
end
