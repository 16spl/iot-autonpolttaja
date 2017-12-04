class Api::V1::HeaterSerializer < ActiveModel::Serializer
  attributes :id, :tempature, :status, :last_seen,  :created_at, :updated_at
  belongs_to :heater
end
