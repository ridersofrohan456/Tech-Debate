namespace :db do
  desc "Populate debates"
  task populate: :environment do
    [User, Debate].map(&:destroy_all)

    User.create!(
      name:     "aj",
      email:    "ajn123@vt.edu",
      password: "user1234",
      debates:  Debate.all
    )

    topics = ["Apple vs Android",
    "Was Tim Cook right when he said that users of online services like Google are products, not customers?",
    "Selling stolen IPhones: Will Apple's new anti-theft tool make this a thing of the past?",
    "Amazon one click payments",
    "Will computer technology cause human workers to become obsolete?",
    "Is the FireChat App an enemy of the State of Hong Kong, because the app is helping protesters organize?",
    "Will the iPhone 6 be successful in China?",
    "Will the new social network Ello be a legitimate competitor of Facebook?",
    "Do Internet-connected smart light bulbs present a serious security threat?",
    "Is the iPhone 6 really the best smart phone ever made?"]

    10.times do |num|
      Debate.create!(
        title:       topics[num],
        description: Faker::Lorem.paragraph(3),
        winner:      Faker::Name.name,
        users:       User.all
      )

      Comment.create!(
        authored_by:   Faker::Name.name,
        description:   Faker::Lorem.paragraph(3),
        votes:         5,
        debate:        Debate.first,
        side:          rand(2) + 1  # random on each side
      )
      User.create!(
        name:     Faker::Name.name,
        email:    Faker::Internet.email,
        password: "user1234",
        debates:  Debate.all
      )

    end
   puts "users and debates populated"
  end
end