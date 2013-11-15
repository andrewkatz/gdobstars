json.array!(@users) do |user|
  json.extract! user, :email, :name, :stars, :ticks, :id, :active
  json.url user_url(user, format: :json)
end
