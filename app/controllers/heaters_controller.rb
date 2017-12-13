class HeatersController < ApplicationController
  def index
    @heaters = Heater.all
  end

  def new
    @heater = Heater.new
  end

  def show
    @heater = Heater.find(params[:id])
    @command = HeaterCommand.new
  end

  def create
    @heater = Heater.new(heater_params)
    if @heater.valid?
      @heater.save
      flash.now[:success] = "Lähetetty"
      redirect_to root_path
    else
      render :action => 'new'
    end
  end

  private
    def heater_params
      params.require(:heater).permit(:owner,:name)
    end

end
