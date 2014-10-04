namespace :db do
  desc "Populate debates"
  task populate_debates: :environment do
    [User, Debate].map(&:destroy_all)
    10.times do


      Debate.create!(
        title:       Faker::Company.name,
        description: Faker::Lorem.paragraph(3),
        winner:      Faker::Name.name,
        users:       User.all
      )
      Comment.create!(
        authored_by:   Faker::Name.name,
        description:   Faker::Lorem.paragraph(3),
        votes:         5,
        debate:        Debate.first
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