require 'csv'

locations = YAML.load_file(Rails.root.join('db', 'seeds', 'locations.yml')).map do |loc|
  Location.create name: loc['name'], ebird_id: loc['ebird_id'], website: loc['website']
end

csv_text = File.read(Rails.root.join('db', 'seeds', 'starter_subset.csv'))
csv = CSV.parse(csv_text, headers: true)

csv.each do |row|
  priority = row['priority'] == "Y" ? true : false
  photo_url = row['photo_link']
  attribution = row['photo_attribution']
  name = row['name']

  puts "processing #{name}"

  bird = Bird.find_by(name: name)

  if bird
    #update existing birds photo credits
    bird.update({attribution: attribution})
  else
    Bird.create(
      name: name,
      priority: priority,
      number_of_locations: row['number_of_locations'],
      photo_remote_url: photo_url,
      attribution: attribution
    )
  end
end