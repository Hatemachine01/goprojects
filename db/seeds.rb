# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


admin_1 = User.create!(:name => "julio", :last_name => 'Vasquez' ,  :email => "juliodevasquez@gmail.com"  , :password => "administrador" , :password_confirmation=> "administrador" , :admin? => true)


