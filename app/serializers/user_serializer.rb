class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :remember_token, :expires_at
end
