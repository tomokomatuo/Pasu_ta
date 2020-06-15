# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create(nickname: 'けんたろう', email: 'kentaro@gmail.com', password: '000000')
User.create(nickname: 'けんじ', email: 'kenji@gmail.com', password: '000000')
User.create(nickname: 'かな', email: 'kana@gmail.com', password: '000000')
User.create(nickname: 'みき', email: 'miki@gmail.com', password: '000000')
User.create(nickname: 'かんな', email: 'kanna@gmail.com', password: '000000')
User.create(nickname: 'こうた', email: 'kota@gmail.com', password: '000000')
User.create(nickname: 'あきお', email: 'akio@gmail.com', password: '000000')
User.create(nickname: 'ゆうこ', email: 'yuko@gmail.com', password: '000000')
User.create(nickname: 'りか', email: 'rika@gmail.com', password: '000000')
User.create(nickname: 'ただお', email: 'tadao@gmail.com', password: '000000')
User.create(nickname: 'ももこ', email: 'momoko@gmail.com', password: '000000')
User.create(nickname: 'さとる', email: 'satoru@gmail.com', password: '000000')
User.create(nickname: 'ゆみ', email: 'yumi@gmail.com', password: '000000')
User.create(nickname: 'ゆうじ', email: 'yuji@gmail.com', password: '000000')
User.create(nickname: 'ゆか', email: 'yuka@gmail.com', password: '000000')
User.create(nickname: 'かいと', email: 'kaito@gmail.com', password: '000000')
User.create(nickname: 'れな', email: 'rena@gmail.com', password: '000000')
User.create(nickname: 'ゆうと', email: 'yuto@gmail.com', password: '000000')
User.create(nickname: 'さくら', email: 'sakura@gmail.com', password: '000000')
User.create(nickname: 'あさこ', email: 'asako@gmail.com', password: '000000')

Stylist.create(name: 'けんたろう', age: '24', gender: '男', address: '新宿', phone_number: '09076751111')
Stylist.create(name: 'けんじ', age: '22', gender: '1', address: '渋谷', phone_number: '09076751112')
Stylist.create(name: 'かな', age: '21', gender: '2', address: '原宿', phone_number: '09076751113')
Stylist.create(name: 'みき', age: '26', gender: '2', address: '新宿', phone_number: '09076751114')
Stylist.create(name: 'かんな', age: '22', gender: '2', address: '池袋', phone_number: '09076751115')
Stylist.create(name: 'こうた', age: '18', gender: '1', address: '上野', phone_number: '09076751116')
Stylist.create(name: 'あきお', age: '47', gender: '1', address: '新宿', phone_number: '09076751117')
Stylist.create(name: 'ゆうこ', age: '34', gender: '1', address: '渋谷', phone_number: '09076751118')
Stylist.create(name: 'りか', age: '43', gender: '2', address: '原宿', phone_number: '09076751119')
Stylist.create(name: 'ただお', age: '22', gender: '2', address: '新宿', phone_number: '09076751110')

Seeker.create(name: 'ももこ',age: '40', gender: '1', address: '新宿', phone_number: '09076751121')
Seeker.create(name: 'さとる',age: '37', gender: '1', address: '渋谷', phone_number: '09076751122')
Seeker.create(name: 'ゆみ',age: '35', gender: '2', address: '原宿', phone_number: '09076751123')
Seeker.create(name: 'ゆうじ',age: '30', gender: '2', address: '新宿', phone_number: '09076751124')
Seeker.create(name: 'ゆか',age: '18', gender: '2', address: '池袋', phone_number: '09076751125')
Seeker.create(name: 'かいと',age: '44', gender: '1', address: '上野', phone_number: '09076751126')
Seeker.create(name: 'れな',age: '19', gender: '1', address: '新宿', phone_number: '09076751127')
Seeker.create(name: 'ゆうと',age: '27', gender: '1', address: '渋谷', phone_number: '09076751128')
Seeker.create(name: 'さくら',age: '32', gender: '2', address: '原宿', phone_number: '09076751129')
Seeker.create(name: 'あさこ',age: '23', gender: '2', address: '新宿', phone_number: '09076751120')

