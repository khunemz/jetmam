json.array!(@shirts) do |shirt|
  json.extract! shirt, :id, :color, :size, :neck, :amount, :total
  json.url shirt_url(shirt, format: :json)
end
