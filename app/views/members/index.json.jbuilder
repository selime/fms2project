json.array!(@members) do |member|
  json.extract! member, :id, :name, :surname, :email, :department, :password, :password_confirmation, :isadmin
  json.url member_url(member, format: :json)
end
