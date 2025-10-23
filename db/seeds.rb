# db/seeds.rb

# Clear existing data
Flight.destroy_all
Airport.destroy_all

# Create airports
sfo = Airport.create!(code: "SFO", name: "San Francisco International")
nyc = Airport.create!(code: "NYC", name: "New York")
lax = Airport.create!(code: "LAX", name: "Los Angeles International")
ord = Airport.create!(code: "ORD", name: "Chicago O'Hare")
dfw = Airport.create!(code: "DFW", name: "Dallas/Fort Worth")
atl = Airport.create!(code: "ATL", name: "Hartsfield-Jackson Atlanta")
den = Airport.create!(code: "DEN", name: "Denver International")

puts "Created #{Airport.count} airports"

# Create flights
# SFO flights
Flight.create!(departure_airport: sfo, arrival_airport: nyc, start: 1.day.from_now.change(hour: 8), duration: 300)
Flight.create!(departure_airport: sfo, arrival_airport: nyc, start: 1.day.from_now.change(hour: 14), duration: 310)
Flight.create!(departure_airport: sfo, arrival_airport: lax, start: 2.days.from_now.change(hour: 9), duration: 90)
Flight.create!(departure_airport: sfo, arrival_airport: ord, start: 3.days.from_now.change(hour: 10), duration: 240)
Flight.create!(departure_airport: sfo, arrival_airport: den, start: 4.days.from_now.change(hour: 7), duration: 150)

# NYC flights
Flight.create!(departure_airport: nyc, arrival_airport: sfo, start: 1.day.from_now.change(hour: 10), duration: 360)
Flight.create!(departure_airport: nyc, arrival_airport: lax, start: 2.days.from_now.change(hour: 11), duration: 330)
Flight.create!(departure_airport: nyc, arrival_airport: atl, start: 2.days.from_now.change(hour: 15), duration: 150)
Flight.create!(departure_airport: nyc, arrival_airport: ord, start: 3.days.from_now.change(hour: 13), duration: 135)

# LAX flights
Flight.create!(departure_airport: lax, arrival_airport: sfo, start: 1.day.from_now.change(hour: 16), duration: 85)
Flight.create!(departure_airport: lax, arrival_airport: nyc, start: 2.days.from_now.change(hour: 8), duration: 320)
Flight.create!(departure_airport: lax, arrival_airport: dfw, start: 3.days.from_now.change(hour: 12), duration: 180)
Flight.create!(departure_airport: lax, arrival_airport: den, start: 4.days.from_now.change(hour: 14), duration: 130)

# ORD flights
Flight.create!(departure_airport: ord, arrival_airport: nyc, start: 1.day.from_now.change(hour: 11), duration: 140)
Flight.create!(departure_airport: ord, arrival_airport: sfo, start: 2.days.from_now.change(hour: 9), duration: 250)
Flight.create!(departure_airport: ord, arrival_airport: atl, start: 3.days.from_now.change(hour: 15), duration: 120)
Flight.create!(departure_airport: ord, arrival_airport: lax, start: 4.days.from_now.change(hour: 13), duration: 240)

# DFW flights
Flight.create!(departure_airport: dfw, arrival_airport: lax, start: 1.day.from_now.change(hour: 12), duration: 175)
Flight.create!(departure_airport: dfw, arrival_airport: nyc, start: 2.days.from_now.change(hour: 10), duration: 210)
Flight.create!(departure_airport: dfw, arrival_airport: atl, start: 3.days.from_now.change(hour: 14), duration: 135)

# ATL flights
Flight.create!(departure_airport: atl, arrival_airport: nyc, start: 1.day.from_now.change(hour: 9), duration: 145)
Flight.create!(departure_airport: atl, arrival_airport: ord, start: 2.days.from_now.change(hour: 11), duration: 125)
Flight.create!(departure_airport: atl, arrival_airport: dfw, start: 3.days.from_now.change(hour: 13), duration: 140)
Flight.create!(departure_airport: atl, arrival_airport: lax, start: 4.days.from_now.change(hour: 8), duration: 270)

# DEN flights
Flight.create!(departure_airport: den, arrival_airport: sfo, start: 1.day.from_now.change(hour: 15), duration: 155)
Flight.create!(departure_airport: den, arrival_airport: lax, start: 2.days.from_now.change(hour: 10), duration: 135)
Flight.create!(departure_airport: den, arrival_airport: ord, start: 3.days.from_now.change(hour: 12), duration: 130)

puts "Created #{Flight.count} flights"
