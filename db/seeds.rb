require 'csv'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

csv_text = File.read(Rails.root.join('lib', 'seeds', 'wines-france.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

#puts csv_text

csv.each do |row|
  t = Wine.new
  t.country = row['country']
  t.description = row['description']
  t.designation = row['designation']
  t.points = row['points']
  t.price = row['price']
  t.province = row['province']
  t.region_1 = row['region_1']
  t.region_2 = row['region_2']
  t.variety = row['variety']
  t.winery = row['winery']
  t.province = row['province']
  t.lat = row['lat']
  t.lon = row['lon']
  t.save
  puts "#{t.description}, #{t.province} saved"
end
