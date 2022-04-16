# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Meme.create!(
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
        '1.jpg'
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
        '2.gif'
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
        '3.gif'
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
        '4.jpg'
    }
  ]
)
