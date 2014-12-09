json.array!(@assets) do |asset|
  json.extract! asset, :id, :ttile
  json.url asset_url(asset, format: :json)
end
