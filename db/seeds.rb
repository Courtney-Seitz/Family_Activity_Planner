# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Member.destroy_all
Task.destroy_all

current_member = Member.create!({
  name: "Pookie McPookieson",
  date_of_birth: "10/10/2010",
  img_url: "https://upload.wikimedia.org/wikipedia/commons/c/cd/Panda_Cub_from_Wolong,_Sichuan,_China.JPG",
  email: "pandabear@pandas.org",
  phone: "1-800-pandariffic"
  })

  current_task = Task.create!({
    description: "Eat all of the things",
    location: "Panda-Eats Meet-up",
    date: "Every Day",
    note: "Bring more eats for panda eats, invite more pandas.",
    member_id: current_member
    })

    current_member = Member.create!({
      name: "Cuddles Flooferstein",
      date_of_birth: "11/11/2011",
      img_url: "http://www.nathab.com/uploaded-files/carousels/TRIPS/Wild-China/Asia-Wild-China-6-panda.jpg",
      email: "pandabear2@pandas.org",
      phone: "1-800-pandariffic"
      })

      current_task = Task.create!({
        description: "Be adorable, and frightening",
        location: "Everywhere",
        date: "Always and forever",
        note: "Make sure everyone knows I'm adorable, and frightening.",
        member_id: current_member
        })

        current_member = Member.create!({
          name: "Fuzzles Tenderfur",
          date_of_birth: "10/10/2010",
          img_url: "http://viralpursuit.com/wp-content/uploads/2016/02/cute_baby_panda.jpg",
          email: "pandabear3@pandas.org",
          phone: "1-800-pandariffic"
          })

          current_task = Task.create!({
            description: "Nap",
            location: "Wherever I want",
            date: "Now",
            note: "Do not disturb a sleeping panda",
            member_id: current_member
            })
