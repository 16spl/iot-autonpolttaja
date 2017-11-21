class TempatureController < ApplicationController
  def show
    @temp = Tempature.order("id").last
    @days = params[:days] ||= 7
  end

  def csv_temp
    temp = Tempature.to_csv(params[:days])
    render plain: temp
  end

  def new

  end

  def create
  end

end
