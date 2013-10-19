json.array!(@theft_reports) do |theft_report|
  json.extract! theft_report, :location, :theft_date, :theft_way, :bike_data
  json.url theft_report_url(theft_report, format: :json)
end
