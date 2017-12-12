class HeaterCommandsController < ApplicationController
  def show
    @commands = HeaterCommand.all
  end

  def new
    @heater = Heater.find(params[:heater_id])
    @command = HeaterCommand.new
  end

  def create
    @heater = Heater.find(params[:heater_id])
    @command = @heater.heater_commands.new(heater_command_params)
    if @command.valid?
      @command.save
      flash.now[:success] = "Lähetetty"
      render 'heaters/show'
    else
      render 'heaters/show'
    end
  end

  private
    def heater_command_params
      params.require(:heater_command).permit(:seen, :command, :heating)
    end
end
