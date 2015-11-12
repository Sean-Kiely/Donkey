namespace :db do
  desc "clear the DB and fill with data"
  task :populate => :environment do
    #give access to populator and faker gems
    require 'populator'
    require 'faker'
    #clear old records, leaves tables
    [Owner, Donkey].each(&:destroy_all)
    #add fake data
    Owner.populate 14 do |owner|
      owner.first_name = Faker::Name.first_name
      owner.last_name = Faker::Name.last_name
      owner.email = Faker::Internet.email(owner.first_name)

      Donkey.populate 1..5 do |donkey|
        donkey.name = Faker::Hacker.noun
        donkey.dob = Faker::Date.backward(35000)
        donkey.med_cond = Faker::Lorem.sentence
        donkey.breed_id = rand(8)+1
        donkey.owner_id = owner.id


      end
    end

    puts "Booyaa!"

  end

end