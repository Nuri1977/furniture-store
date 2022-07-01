require 'faker'

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

User.create!(email: 'nurilacka@gmail.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
User.create!(email: 'user@test.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Showroom.create!(
  name: 'Struga',
  adress: 'Zufer Music',
  phone: '389 02 2356-152',
  mobile: '389 71 241-526',
  email: 'nurilacka@gmail.com',
  image_url: 'http://www.mebel-lacka.com/img/struga.jpg',
  geolocation: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2443.8433730110883!2d20.682921319041682!3d41.17828199999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1350e715839c91f9%3A0xb5730a939ef9aa17!2sLacka!5e1!3m2!1sen!2smk!4v1651303413089!5m2!1sen!2smk'
)

Showroom.create!(
  name: 'Skopje',
  adress: 'Industriska zona Vizbegovo',
  phone: '+389 02 2356-152',
  mobile: '+389 71 241-526',
  email: 'nurilacka@gmail.com',
  image_url: 'http://www.mebel-lacka.com/img/skopje.jpg',
  geolocation: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d617439.6126767815!2d20.844601377995975!3d42.027950200000014!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x135414ec3a44a5bd%3A0x6ec10a740eaf4bb9!2sLa%C4%8Dka%20Mebel%20Skopje!5e1!3m2!1sen!2smk!4v1651304342741!5m2!1sen!2smk'
)

Showroom.create!(
  name: 'Gostivar',
  adress: 'Industriska Zona',
  phone: '+389 02 2356-152',
  mobile: '+389 71 241-526',
  email: 'nurilacka@gmail.com',
  image_url: 'http://www.mebel-lacka.com/img/gostivar.jpg',
  geolocation: 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d2443.8373285498014!2d20.685132!3d41.178444!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1351579ae72358db%3A0x48381bde365dedb7!2sLACKA!5e1!3m2!1sen!2smk!4v1651302929145!5m2!1sen!2smk'
)

5.times do
  category = Category.create!(category_name: Faker::House.unique.room)
  category.image.attach(io: File.open("#{Rails.root}/app/assets/images/bedroom_01.jpg"), filename: 'bedroom_01.jpg', content_type: 'image/jpg')
end

Category.all.each do |category|
  5.times do
    subcategory = Subcategory.create!(name: Faker::House.furniture, category_id: category.id)
    subcategory.image.attach(io: File.open("#{Rails.root}/app/assets/images/bedroom_02.jpg"), filename: 'bedroom_01.jpg', content_type: 'image/jpg')
  end
end


Subcategory.all.each do |subcategory|
  i = 0
  5.times do
    i += 1
    product = Product.create!(product_name: Faker::Ancient.primordial, subcategory_id: subcategory.id, price: Faker::Number.number(digits: 3), dimensions: '100x100x100')
    product.image.attach(io: File.open("#{Rails.root}/app/assets/images/sofa_01.jpg"), filename: 'sofa_01.jpg', content_type: 'image/jpg') if i == 1
    product.image.attach(io: File.open("#{Rails.root}/app/assets/images/sofa_02.jpg"), filename: 'sofa_02.jpg', content_type: 'image/jpg') if i == 2
    product.image.attach(io: File.open("#{Rails.root}/app/assets/images/sofa_03.jpg"), filename: 'sofa_03.jpg', content_type: 'image/jpg') if i == 3
    product.image.attach(io: File.open("#{Rails.root}/app/assets/images/sofa_04.jpg"), filename: 'sofa_04.jpg', content_type: 'image/jpg') if i == 4
    product.image.attach(io: File.open("#{Rails.root}/app/assets/images/sofa_05.jpg"), filename: 'sofa_05.jpg', content_type: 'image/jpg') if i == 5
  end
end





puts 'Seed data created successfully'
