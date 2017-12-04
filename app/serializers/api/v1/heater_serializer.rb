class Api::V1::HeaterSerializer < ActiveModel::Serializer
  attributes :id, :name, :owner, :created_at, :updated_at
end
