json.array!(@admins) do |admin|
  json.extract! admin, 
  json.url admin_url(admin, format: :json)
end
