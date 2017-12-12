class HeaterCommand < ApplicationRecord
  STATUSES = ["SET_","SET_HEATING_TIME","REMOVE_TIMED","STOP_HEATING","REMOVE_KEBAB"]
  belongs_to :heater
  after_initialize :init

  def self.status_list
    return STATUSES
  end

  private
   def init
     self.seen  ||= false
   end
end
