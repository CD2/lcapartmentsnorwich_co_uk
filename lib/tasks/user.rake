task gen_users: :environment do

  User.create!(name: "Shane", email: "web@cd2solutions.co.uk", password: "drowssap", password_confirmation: "drowssap", admin: true )


end