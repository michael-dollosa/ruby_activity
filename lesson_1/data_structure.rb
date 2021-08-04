contact_data = [["ana@email.com", "123 Main st.", "555-123-4567"],
            ["avion@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Analyn Cajocson" => {}, "Avion School" => {}}

contacts.each_with_index do | (key, value), index|
  value[:email] = contact_data[index][0]
  value[:address] = contact_data[index][1]
  value[:phone] = contact_data[index][2]
end

puts contacts