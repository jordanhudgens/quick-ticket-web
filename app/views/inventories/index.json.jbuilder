json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :title, :qty, :ticket_id
  json.url inventory_url(inventory, format: :json)
end
