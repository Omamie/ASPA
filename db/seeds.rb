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

treatment_attributes = [{name:"Crculatory massage",description:"Targeted massage to help blood circulation", price: 781, center_name:"Elvy Centro Benessere", user_id: User.ids.sample, address: "corso lodi, milan", remote_photo_url: "https://d19tiqumqauva7.cloudfront.net/var/andorra/storage/images/_aliases/linked_info1/www.andorra.ad/multimedia/galeria/relax/spa-s-i-centres-de-wellness/1177x492_spa-s-i-centres-de-wellness2/24045935-1-cat-ES/1177x492_spa-s-i-centres-de-wellness2.jpg"},
{"name":"Relaxing massage","description":"Massage made with moves that relax muscles and mind.","price":965,"center_name": "Spazio SoloSalute", user_id: User.ids.sample, "address": "corso lodi, milan", remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp49JSah0XHavPD-vdYjuk95uVNxRYQzr4YKxFP1heRGzNQKIE&s"},
{"name":"Lymphatic drainage massage","description":"Massage that helps lymph flow towards the discharge points, frees the body from excess fluids.","price":856,"center_name":"The White Medispa", user_id: User.ids.sample, "address": "mare street, london", remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShRyhJ2uNHzOfiLvZK2K5v_a3kbJxgx8I_t-loQXLkQJJyx1Ml&s"},
{"name":"Tissue massage","description":"Manual anti cellulite indicated in cases of localized fat and cellulite treatment.","price":10,"center_name":"luk vilai thai massage", user_id: User.ids.sample, "address": "palermo",remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvPtWZE3ZRJtnxqT2fEmVY8bO0VSphgr5YabPmfQSYlDsrTbbi&s"},
{"name":"Sports massage","description":"With a sports massage to all the major muscles, tension is gradually relaxed and circulation restored.","price":93,"center_name":"Centro Olistico", user_id: User.ids.sample, "address": "narobi", remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvPtWZE3ZRJtnxqT2fEmVY8bO0VSphgr5YabPmfQSYlDsrTbbi&s"},
{"name":"Relaxing massage with Argan oil","description":"Relaxing massage made with argan oil properties, super nutrients and antioxidants.","price":15,"center_name":"FiloDiLuna Atelier", user_id: User.ids.sample, "address": "via roma, milano", remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp49JSah0XHavPD-vdYjuk95uVNxRYQzr4YKxFP1heRGzNQKIE&s"},
{"name":"Zonal massage","description":"Massage performed in an area of the body: back, leg, foot, neck and neck area.","price":407,"center_name":"Meeting Club", user_id: User.ids.sample, "address": "via pisacane, pregnana milanese", remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZx9IrV-fk4_66cqhmw0ZGWfWDJeBQp_3fQPIs1brOBqjsUnjj&s"},
{"name":"Facial massage","description":"The treatment consists of a gentle massage of the face with the use of a vial or specific cream.","price":263,"center_name":"Oneonone Srl", user_id: User.ids.sample, "address": "corso lodi, milan", remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7yYoo6xOR279SElLRARh-JJ2xkYqW04wHcNn4kbe5mk9AeHHWPw&s"},
{"name":"Couples massage","description":"Massage performed simultaneously with relaxing effect.","price":453,"center_name":"Saint Tropez", user_id: User.ids.sample, "address": "viale molise, milan", remote_photo_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJOwQTiQgng4GIz42pbnWhyxMg4igqThssaU-_Cw1sV2UMf0RE&s"},
{"name":"Love Massage","description":"Candle. Couples massage using aromatic candles with ppepper and cocoa, which when lit, create an oil that caress the body. They represent a real wellness ritual that involves all the senses.","price":188,"center_name":"Centri Body Care",user_id: User.ids.sample, "address": "corso lodi, milan", "photo": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJkadbzypiCB3z4ehujW9BHwZkAUoD3G5S5wxdUvTmkpyf7nCpZQ&s"}]



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
