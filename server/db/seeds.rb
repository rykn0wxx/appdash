# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# region_data = JSON.parse(File.read('db/init_data/regions.json'))
# Region.create!(region_data)

# project_data = JSON.parse(File.read('db/init_data/projects.json'))
# Project.create!(project_data)

# client_data = JSON.parse(File.read('db/init_data/clients.json'))
# client_data.each do |client|
#   row = Hash[client]
#   region = Region.find_by_name(row['region']).id
#   project = Project.find_by_name(row['project']).id
#   Client.create!(:name => row['name'], :project_id => project, :region_id => region)
# end