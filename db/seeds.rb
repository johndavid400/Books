# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

#  Create 10 fake book references into the database
  10.times{Book.create(:title => Faker::Company.catch_phrase, :note => Faker::Lorem.sentence)}

#  Also create 5 fake comments for each book reference  
  #range = (1..10)
  (1..10).each do |seed|
  5.times{Comment.create(:book_id => seed, :author => Faker::Name.first_name, :text => Faker::Lorem.sentences)}
  end
