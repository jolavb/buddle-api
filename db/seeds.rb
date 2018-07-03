# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

med = ["NY", "NH", "CT", "NJ", "RI","PA", "DE","MD","WV","OH", "MI","IL","AR","FL", "MN","ND","MT","NM","AZ","HI"]
rec =  ["AK","WA","OR","NV","CA","CO","DC","MA","VT","ME"]

State.destroy_all

CSV.foreach('lib/StateSeeds.csv', headers: true) do |row|
  record = State.new(row.to_h)
  if med.include? record.abr
    record.status = "med"
  elsif rec.include? record.abr
    record.status = "rec"
  end
  record.save()
end
