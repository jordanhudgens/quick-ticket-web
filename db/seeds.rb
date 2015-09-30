25.times do |ticket|
  Ticket.create!(title: "Job #{ticket}", description: "This is my job description for job #{ticket}", hours: rand(10), mileage: rand(100), employee: "John Smith", customer: "ABC Company")
end