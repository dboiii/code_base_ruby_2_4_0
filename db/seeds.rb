puts "Create Admin"
User.create(email: "admin@vinova.sg", role: 1000, password: "vinova123")
User.first.confirm

(1..20).each do |f|
	User.create(email: "user" + f.to_s + "@vinova.sg", role: 1, password: "vinova123")
end