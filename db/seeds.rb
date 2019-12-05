# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# db/seeds.rb
puts 'Cleaning database...'
User.destroy_all

puts 'Creating users...'
user_attributes = [{"first_name":"Ketty","last_name":"Winham","email":"kwinham0@themeforest.net","gender":"Female", "password":"aaadssdaaaaa"},
{"first_name":"Clovis","last_name":"Colvill","email":"ccolvill1@nydailynews.com","gender":"Female", "password":"bbbb1232bbb"},
{"first_name":"Susy","last_name":"Geldeard","email":"sgeldeard2@businesswire.com","gender":"Female", "password":"ccc123ccccc"},
{"first_name":"Brennan","last_name":"Kimmerling","email":"bkimmerling3@guardian.co.uk","gender":"Male", "password":"dd33ddddd"},
{"first_name":"Aluino","last_name":"Grodden","email":"agrodden4@baidu.com","gender":"Male", "password":"ad454aaa"},
{"first_name":"Elia","last_name":"Kubalek","email":"ekubalek5@devhub.com","gender":"Male","password":"aaa323saaa"},
{"first_name":"Benji","last_name":"Semiraz","email":"bsemiraz6@canalblog.com","gender":"Male", "password":"adw432aaa"},
{"first_name":"Gerda","last_name":"Piggin","email":"gpiggin7@hc360.com","gender":"Female", "password":"azxa4454aa"},
{"first_name":"Anallese","last_name":"MacCarrane","email":"amaccarrane8@sina.com.cn","gender":"Female", "password":"acs32434aaa"},
{"first_name":"Carl","last_name":"Camacke","email":"ccamacke9@ovh.net","gender":"Male", "password":"aaa3434mvdaa"}]

User.create!(user_attributes)
Treatment.destroy_all

puts 'Creating treatments...'
treatment_attributes = [{"name":"relax massage","description":"Mattia sei un frande","price":781,"center_name":"at turpis", user_id: User.ids.sample},
{"name":"eget","description":"Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.","price":965,"center_name":"convallis duis", user_id: User.ids.sample, "address": "corso lodi, milan"},
{"name":"montes","description":"Duis bibendum.","price":856,"center_name":"hac", user_id: User.ids.sample, "address": "mare street, london"},
{"name":"ultrices","description":"Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.","price":10,"center_name":"orci pede", user_id: User.ids.sample, "address": "palermo"},
{"name":"convallis","description":"In hac habitasse platea dictumst. Etiam faucibus cursus urna.","price":93,"center_name":"est congue", user_id: User.ids.sample, "address": "narobi"},
{"name":"sem","description":"Vivamus vel nulla eget eros elementum pellentesque.","price":15,"center_name":"sollicitudin", user_id: User.ids.sample},
{"name":"integer","description":"Donec posuere metus vitae ipsum. Aliquam non mauris.","price":407,"center_name":"bibendum felis", user_id: User.ids.sample},
{"name":"semper","description":"Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.","price":263,"center_name":"faucibus orci", user_id: User.ids.sample},
{"name":"molestie","description":"Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.","price":453,"center_name":"iaculis congue", user_id: User.ids.sample},
{"name":"ut","description":"Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.","price":188,"center_name":"ipsum",user_id: User.ids.sample}]

Treatment.create!(treatment_attributes)

puts 'Creating bookings'

booking_attributes = [{user_id: User.ids.sample,treatment_id:Treatment.ids.sample, date:"5/9/2019"},
{user_id: User.ids.sample,treatment_id:Treatment.ids.sample,date:"6/13/2019"},
{user_id: User.ids.sample,treatment_id:Treatment.ids.sample,date:"5/7/2019"},
{user_id: User.ids.sample,treatment_id:Treatment.ids.sample,date:"6/11/2019"},
{user_id: User.ids.sample,treatment_id:Treatment.ids.sample,date:"4/9/2019"},
{user_id: User.ids.sample,treatment_id:Treatment.ids.sample,date:"10/3/2019"},
{user_id: User.ids.sample,treatment_id:Treatment.ids.sample,date:"1/31/2019"},
{user_id: User.ids.sample,treatment_id:Treatment.ids.sample,date:"2/19/2019"},
{user_id: User.ids.sample,treatment_id:Treatment.ids.sample,date:"1/22/2019"},
{user_id: User.ids.sample,treatment_id:Treatment.ids.sample,date:"12/1/2019"}]

Booking.create!(booking_attributes)
puts 'Finished'
