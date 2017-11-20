class TempatureController < ApplicationController
  def show
    @temp = Tempature.order("id").last
  end

  def csv_temp
    temp = Tempature.to_csv
    render plain: temp
end
  def new

  end

  def create
  end

end
