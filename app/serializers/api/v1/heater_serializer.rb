class Api::V1::HeaterSerializer < ActiveModel::Serializer
  has_many :heater_commands
  attributes :id, :name, :owner, :created_at, :updated_at
end
