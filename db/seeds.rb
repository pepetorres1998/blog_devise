# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin = User.create(first_name: 'Admin', last_name: 'Admin', username: 'admin', phone: ENV["ADMIN_PHONE"], admin: true, creator: true, email: ENV["ADMIN_EMAIL"], password: ENV["ADMIN_PASSWORD"], password_confirmation: ENV["ADMIN_PASSWORD"])
admin.save
categories = Category.create([{name: 'International'}, {name: 'US News'}, {name: 'Society'}, {name: 'Culture'}, {name: 'Science & Technology'}, {name: 'Sports'}, {name: 'People'}, {name: 'Media'}])
categories.each do |category|
  category.save
end
