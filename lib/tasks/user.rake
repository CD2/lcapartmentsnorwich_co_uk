task gen_users: :environment do

  User.create!(email: "web@cd2solutions.co.uk", password: "pass123")
  User.create!(email: "web@lcapartmentsnorwich.co.uk", password: "lcaweb1*")


end