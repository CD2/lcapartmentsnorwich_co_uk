task gen_users: :environment do

  User.create!(email: "web@cd2solutions.co.uk", password: "pass123")


end