locations = YAML.load_file(Rails.root.join('db', 'seeds', 'locations.yml')).map do |loc|
  Location.create name: loc['name'], ebird_id: loc['ebird_id'], website: loc['website']
end

# rank = 0
# birds = YAML.load_file(Rails.root.join('db', 'seeds', 'birds.yml')).map do |name|
#   rank += 1
#   Bird.create(name: name, rank: rank, description: 'test description')
# end

# # birds.each do |bird|
# #   BirdLocation.create bird: bird, location: locations.sample
# # end

require 'csv'

csv_text = File.read(Rails.root.join('db', 'all_species.csv'))
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  priority = row['priority'] == "Y" ? true : false
  Bird.create(name: row['name'], priority: priority, number_of_locations: row['number_of_locations'])
end