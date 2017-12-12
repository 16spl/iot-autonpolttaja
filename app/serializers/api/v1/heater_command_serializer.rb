class Api::V1::HeaterCommandSerializer < ActiveModel::Serializer
  attributes :id, :command, :heating, :seen, :created_at, :updated_at
end
