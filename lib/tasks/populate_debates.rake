namespace :db do
  desc "Populate debates"
  task populate_debates: :environment do
    [User, Debate].map(&:destroy_all)
    10.times do
      d = Debate.create!(
        title:       Faker::Company.name,
        description: Faker::Lorem.paragraph(3),
        winner:      Faker::Company.name,
        users:       User.all
      )
      User.create!(
        name:     "aj",
        email:    Faker::Internet.email,
        password: "user1234",
        debates:  Debate.all
      )
    end
   puts "users and debates populated"
  end
end