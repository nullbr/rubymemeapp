# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Meme.create! (
               [
                 {
                   name: 'Happy Ruby',
                   description:
                     ' 
            a happy ruby a happy ruby a happy ruby a happy ruby 
            a happy ruby a happy ruby a happy ruby a happy ruby
        '.squish,
                   author: 'Bruno',
                   image_file_name:
                     'https://pm1.narvii.com/6131/81907585d56af524cd827732bba8391851830bb7_hq.jpg'
                 },
                 {
                   name: 'Sad Ruby',
                   description:
                     ' 
            a sad ruby a sad ruby a sad ruby a sad ruby 
            a sad ruby a sad ruby a sad ruby a sad ruby
        '.squish,
                   author: 'Bruno',
                   image_file_name:
                     'https://pm1.narvii.com/6131/81907585d56af524cd827732bba8391851830bb7_hq.jpg'
                 },
                 {
                   name: 'Cool Ruby',
                   description:
                     ' 
            a cool ruby a cool ruby a cool ruby a cool ruby 
            a cool ruby a cool ruby a cool ruby a cool ruby
        '.squish,
                   author: 'Bruno',
                   image_file_name:
                     'https://pm1.narvii.com/6131/81907585d56af524cd827732bba8391851830bb7_hq.jpg'
                 },
                 {
                   name: 'Good Ruby',
                   description:
                     ' 
            a good ruby a good ruby a good ruby a good ruby 
            a good ruby a good ruby a good ruby a good ruby
        '.squish,
                   author: 'Bruno',
                   image_file_name:
                     'https://pm1.narvii.com/6131/81907585d56af524cd827732bba8391851830bb7_hq.jpg'
                 }
               ]
             )
