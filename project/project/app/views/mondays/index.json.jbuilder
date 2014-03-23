json.array!(@mondays) do |monday|
  json.extract! monday, :id, :time, :event
  json.url monday_url(monday, format: :json)
end
