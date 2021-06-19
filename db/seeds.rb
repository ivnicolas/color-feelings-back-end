# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Feeling.create([


{
    name: "Joyful",
    description:"A feeling of great pleasure and happiness"

}, 
{
    name: "Angry",
    description:"Feeling or showing strong annoyance, displeasure, or hostility"
},

{
    name: "Nostalgic",
    description:"A sentimental longing or wistful affection for the past, typically for a period or place 
    with happy personal associations"
},

{
    name: "Hopeful",
    description:"Feeling or inspiring optimism about a future event "
},

{
    name: "Sad",
    description:" A feeling of deep distress caused by loss, disappointment, or other 
    misfortune suffered by oneself or others."
},

{
    name: "Blissful",
    description:"Perfect happiness or great joy"
},

{
    name: "Frustrated",
    description:"Feeling or expressing distress and annoyance, especially because of 
    inability to change or achieve something"
},

{
    name: "Confused",
    description:"Lack of understanding; uncertainty "
},

])


Color.create([{
    name:"Summer Picnic" , 
    hex_code: "#fff06b",
    likes: 1,
    feeling: Feeling.all[0]
    
  },
  {
    name:"Stormy Sage", 
    hex_code: "#132e15",
    likes: 1,
    feeling: Feeling.all[1]
  },

  {
    name: "Columbia Mall Carousel" , 
    hex_code: "#e394d6",
    likes: 1 ,
    feeling: Feeling.all[2]
  },

  {
    name: "Glow-Up" , 
    hex_code: "#ffbc21",
    likes: 1 ,
    feeling: Feeling.all[3]
    
  },
  {
    name: "The Final Hour", 
    hex_code: "#aebfc2",
    likes: 1 ,
    feeling: Feeling.all[4]
  }, 
  {
    name: "Clear Skies", 
    hex_code: "#87e4f5",
    likes: 1 ,
    feeling: Feeling.all[5]
  },

  {
    name:"Seeing Red", 
    hex_code: "#470b0a",
    likes: 1 ,
    feeling: Feeling.all[6]
  },

  {
    name: "I Am Confusion", 
    hex_code: "#453d3d",
    likes: 1 ,
    feeling: Feeling.all[7]
  },
  ])

puts "hey big head"