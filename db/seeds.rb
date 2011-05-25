# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

  15.times{Book.create(:title => Faker::Company.catch_phrase, :note => Faker::Lorem.sentence)}
  
  array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
  array.each do |seed|
  5.times{Comment.create(:book_id => seed, :author => Faker::Name.first_name, :text => Faker::Lorem.sentences)}
  end
