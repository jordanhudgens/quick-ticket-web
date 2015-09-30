json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :title, :description, :hours, :mileage, :employee, :customer
  json.url ticket_url(ticket, format: :json)
end
