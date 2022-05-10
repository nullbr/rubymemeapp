# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless User.find_by(email: 'bruno@bruno.com')
  User.create!(
    [
      {
        name: 'Bruno',
        email: 'bruno@bruno.com',
        admin_status: true,
        password: '1234'
      }
    ]
  )
end

user = User.find_by(email: 'bruno@bruno.com')

meme = Meme.new(
  {
    name: 'Types of Ruby',
    description:
      'Every ruby personality explained by each type of personality'.squish,
    user_id: user.id
  }
)
meme.meme_image.attach(io: File.open('app/assets/images/1.png'), filename: '1.png', content_type: 'image/png')
meme.save

meme = Meme.new(
  {
    name: 'Barbecue for Sapphire',
    description:
      "
      Who doesn't like a barbecue right AAAAAAAAAVVEGETARIANS
      ".squish,
    user_id: user.id
  }
)
meme.meme_image.attach(io: File.open('app/assets/images/2.jpg'), filename: '2.jpg', content_type: 'image/jpg')
meme.save

meme = Meme.new(
  {
    name: "Don't challenge me",
    description:
      '
      When someone challenge my squad
      '.squish,
    user_id: user.id
  }
)
meme.meme_image.attach(io: File.open('app/assets/images/3.gif'), filename: '3.gif', content_type: 'image/gif')
meme.save

meme = Meme.new(
  {
    name: 'In the baseball match',
    description:
      'Let me show you how to play'.squish,
    user_id: user.id
  }
)
meme.meme_image.attach(io: File.open('app/assets/images/4.gif'), filename: '4.gif', content_type: 'image/gif')
meme.save

meme = Meme.new(
  {
    name: 'Ruby and Shapphire',
    description:
      'Ruining the baseball match because they are too in love'.squish,
    user_id: user.id
  }
)
meme.meme_image.attach(io: File.open('app/assets/images/5.gif'), filename: '5.gif', content_type: 'image/gif')
meme.save

if Category.all.empty?
  Category.create!(
    [
      { name: 'Funny' },
      { name: 'Cool' },
      { name: 'Sad' },
      { name: 'Art' }
    ]
  )
end
