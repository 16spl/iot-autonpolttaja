class Api::V1::HeaterCommandsController < Api::V1::BaseController
  def index
    heater = Heater.find(params[:heater_id])
    commands = heater.heater_commands.where.not(seen: true)
    render json: commands, each_serializer: Api::V1::HeaterCommandSerializer
  end

  def update
    heater = Heater.find(params[:heater_id])
    command = heater.heater_commands.find(params[:id])
    if command.valid?
      command.update(command_params)
      head 200
    else
      head 409
    end
  end

  def show
    heater = Heater.find(params[:heater_id])
    commands = heater.heater_commands.find(params[:id])
    render(json: Api::V1::HeaterCommandSerializer.new(commands).to_json)
  end

  private
    def command_params
      params.permit(:seen)
    end
end
