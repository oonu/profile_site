json.array!(@businesses) do |business|
  json.extract! business, :id, :outline, :company_name, :company_position
  json.url business_url(business, format: :json)
end
