# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Family.destroy_all
Member.destroy_all

current_family = Family.create!({
  name: "McPookieson"
  })

current_member = Member.create!({
  name: "Pookie McPookieson",
  date_of_birth: "10/10/2010",
  img_url: "https://aos.iacpublishinglabs.com/question/aq/1400px-788px/pandas-live_64dff22c2fe56e9.jpg?domain=cx.aos.ask.com",
  email: "pandabear@pandas.org",
  phone: "1-800-pandariffic",
  family: current_family
  })

  current_task = Task.create!({
    description: "Eat all of the things",
    location: "Panda-Eats Meet-up",
    date: "Every Day",
    note: "Bring more eats for panda eats, invite more pandas.",
    member: current_member
    })

    current_family = Family.create!({
      name: "Flooferstein"
      })

    current_member = Member.create!({
      name: "Cuddles Flooferstein",
      date_of_birth: "11/11/2011",
      img_url: "http://www.nathab.com/uploaded-files/carousels/TRIPS/Wild-China/Asia-Wild-China-6-panda.jpg",
      email: "pandabear2@pandas.org",
      phone: "1-800-pandariffic",
      family: current_family
      })

      current_task = Task.create!({
        description: "Be adorable, and frightening",
        location: "Everywhere",
        date: "Always and forever",
        note: "Make sure everyone knows I'm adorable, and frightening.",
        member: current_member
        })

        current_family = Family.create!({
          name: "Tenderfur"
          })

        current_member = Member.create!({
          name: "Fuzzles Tenderfur",
          date_of_birth: "10/10/2010",
          img_url: "http://viralpursuit.com/wp-content/uploads/2016/02/cute_baby_panda.jpg",
          email: "pandabear3@pandas.org",
          phone: "1-800-pandariffic",
          family: current_family
          })

          current_task = Task.create!({
            description: "Nap",
            location: "Wherever I want",
            date: "Now",
            note: "Do not disturb a sleeping panda",
            member: current_member
            })
