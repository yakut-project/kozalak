Admin.new( :email => 'admin1@kozalak.com', :password => '12345678',
           :password_confirmation => '12345678').save

10.times do |i|
  Teacher.new( :email => "teacher#{i}@kozalak.com", :password => '12345678',
               :password_confirmation => '12345678').save
end

30.times do |i|
  User.new( :first_name => "user_first_name#{i}",
            :last_name => "user_last_name#{i}",
            :gender => "user_gender#{i}",
            :website => "http://username#{i}.com",
            :github_account => "user_github#{i}",
            :stackoverflow_account => "user_stackoverflow#{i}",
            :bitbucket_account => "user_bitbucket#{i}",
            :blog_address => "user_blog#{i}",
            :twitter_account => "user_twitter#{i}",
            :bio => "user_bio#{i}",
            :email => "user#{i}@kozalak.com",
            :birthdate => "#{i},#{i},#{i}",
            :password => '12345678',
            :password_confirmation => '12345678').save

end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
