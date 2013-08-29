Admin.create( :email => 'admin1@kozalak.com', :password => '12345678', :password_confirmation => '12345678')

10.times do |i|
  Teacher.create( :email => "teacher#{i}@kozalak.com", :password => '12345678', :password_confirmation => '12345678')
end

30.times do |i|
  User.create( :first_name => "user#{i}", :last_name => "userlastname#{i}", :website => "http://username#{i}.com", :github_account => "user#{i}", :bio => "useruser #{i}", :email => "user#{i}@kozalak.com", :password => '12345678', :password_confirmation => '12345678')
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
