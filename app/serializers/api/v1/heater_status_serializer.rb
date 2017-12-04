class Api::V1::HeaterStatusSerializer < ActiveModel::Serializer
  attributes :id, :tempature, :status, :last_seen,  :created_at, :updated_at
end
