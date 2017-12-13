class Heater < ApplicationRecord
  has_many :heating_times, dependent: :destroy
  has_many :heater_statuses, dependent: :destroy
  has_many :heater_commands, dependent: :destroy
end
