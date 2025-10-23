# db/seeds.rb

Airport.find_or_create_by(code: "SFO") { |airport| airport.name = "San Francisco International" }
Airport.find_or_create_by(code: "NYC") { |airport| airport.name = "New York" }
Airport.find_or_create_by(code: "LAX") { |airport| airport.name = "Los Angeles International" }
Airport.find_or_create_by(code: "ORD") { |airport| airport.name = "Chicago O'Hare" }
Airport.find_or_create_by(code: "DFW") { |airport| airport.name = "Dallas/Fort Worth" }
Airport.find_or_create_by(code: "ATL") { |airport| airport.name = "Hartsfield-Jackson Atlanta" }
Airport.find_or_create_by(code: "DEN") { |airport| airport.name = "Denver International" }
