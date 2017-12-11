class Heater < ApplicationRecord
  has_many :heating_times
  has_many :heater_statuses
  has_many :heater_commands
end
