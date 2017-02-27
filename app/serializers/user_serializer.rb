class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :nickname,
             :updated_at, :full_name, :authentication_token

  def full_name
    "#{object.first_name} #{object.last_name}"
  end

end
