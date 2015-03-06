bird_names = YAML.load_file(Rails.root.join('db', 'seeds', 'birds.yml'))

rank = 0
bird_names.each do |name|
  rank += 1
  Bird.create(name: name, rank: rank, description: 'test description')
end