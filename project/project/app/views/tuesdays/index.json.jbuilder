json.array!(@tuesdays) do |tuesday|
  json.extract! tuesday, :id, :time, :event
  json.url tuesday_url(tuesday, format: :json)
end
