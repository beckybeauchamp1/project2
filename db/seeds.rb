# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Instructor.destroy_all
Retreat.destroy_all
Photo.destroy_all

charlotte = Instructor.create!(firstname: "Charlotte", lastname: "Healy", type_of_yoga_practice: "Vinyasa", city: "Washington", state: "District of Columbia", description: "The word “vinyasa” can be translated as “arranging something in a special way,” like yoga poses for example.
In vinyasa yoga classes, students coordinate movement with breath to flow from one pose to the next. Ashtanga, Baptiste Yoga, Jivamukti, Power Yoga, and Prana Flow could all be considered vinyasa yoga. Vinyasa is also the term used to describe a ​specific ​sequence of poses
(Chaturanga to Upward-Facing Dog to Downward-Facing Dog​)​ commonly used throughout a vinyasa class​.", photo_url: "charlotte.jpg", facebook_url: "#", email: "charlotte@gmail.com")

maria = Instructor.create!(firstname: "Maria", lastname: "Fortino", type_of_yoga_practice: "Vinyasa", city: "Washington", state: "District of Columbia", photo_url: "maria.jpg", facebook_url: "#", email: "maria@gmail.com", description: "The word “vinyasa” can be translated as “arranging something in a special way,” like yoga poses for example. In vinyasa yoga classes, students coordinate movement with breath to flow from one pose to the next. Ashtanga, Baptiste Yoga, Jivamukti,
Power Yoga, and Prana Flow could all be considered vinyasa yoga. Vinyasa is also the term used to describe a ​specific ​sequence of poses (Chaturanga to Upward-Facing Dog to Downward-Facing Dog​)​ commonly used throughout a vinyasa class​.")

anna = Instructor.create!(firstname: "Anna", lastname: "Boeri", type_of_yoga_practice: "Hatha", city: "Santa Monica", state: "California", photo_url: "anna.jpg", facebook_url: "#",
email: "anna@gmail.com", description: "The word hatha comes from the Sanskrit terms 'ha' meaning 'sun' and 'tha' meaning 'moon'. Thus, Hatha Yoga is known as the branch of Yoga that unites pairs of opposites referring to the positive (sun) and negative (moon) currents in the system.
It concentrates on the third (Asana) and fourth (Pranayama) steps in the Eight Limbs of Yoga. Hatha Yoga tries to achieve balance between body and mind, as well as attempts to free the more subtle spiritual elements of the mind through physical poses or Asanas, Breathing Techniques.
It is a great type of yoga to practice for Beginners!")

becky = Instructor.create!(firstname: "Becky", lastname: "Beauchamp", type_of_yoga_practice: "Ashtanga", city: "Baltimore", state: "Maryland", photo_url: "becky.jpg", facebook_url: "#", email: "beckybeauchamp1@gmail.com",
description: "With each action and every practice of Ashtanga Yoga, we leave a fingerprint in the universe. Together, all the yogis in the world create! an energetic pattern through their practice. Grab onto this gigantic energy field, and through your own Ashtanga Yoga practice let yourself live, breath for breath,
Vinyasa for Vinyasa. Your mat becomes the bus stop and you climb into the Ashtanga Yoga bus. Your journey takes you directly into a state of physical, mental and spiritual well-being. This page can be your guide for the most exciting ride of your life, a map on your personal spiritual way.")

hailey= Instructor.create!(firstname: "Hailey", lastname: "Feinstein", type_of_yoga_practice: "Ashtanga", city: "Manhattan", state: "New York", photo_url: "hailey.jpg", facebook_url: "#",
description: "The practice of Ashtanga Yoga (Ashtanga/Vinyasa Yoga) as established by Sri K. Pattabhi Jois of Mysore, India is a dynamic system that consists of a precise sequence of poses (asana), breath control (ujjayi pranayama), a gazing point (drishti), and internal energetic locks (bandhas). Each pose in the sequence is a preparation for the next, and is traditionally practiced in sequence.",
email: "hailey@gmail.com")

retreat1 = Retreat.create!(title: "Bali Retreat", description: "This retreat is located at Kura Kura Resort in Bali and is situated along a small river, a few steps away from the sea.
It was originally built as a family house and in a way it still is. The family house was our starting place to build. The original rooms are old Java style houses and the new rooms are added in the same style.
All rooms have an elegant simplicity with modern basic comforts that we are used to in the Western World. Each room is decorated with love and care. The heart of Kura Kura is the yoga shala or community space next to the small pool. Feel free to dip in whenever you like. Most rooms are built around the pool. Rooms are clean and fresh as the sea breeze, but protected and safe as the shield of a Kura Kura (Turtle).
Each room is equipped with an ensuite bathroom with shower (warm/cold water) and Western toilet, comfortable beds covered with fine mosquito nets, a fan and veranda. Each room can be set up with two single or one double bed.
Being at Kura Kura means living close to nature with the rhythms of the sea and the music of birds singing in the coconut trees. You can hear the gamelan and mantras of the temple ceremonies near by.
Coming at Kura Kura means moving away from the pressure of modern distractions. After leaving Kura Kura you have, like our guests say: “an unforgettable experience to take with you for the rest of your life.", address: "Bali, Indonesia", instructor_id: charlotte)

retreat2 = Retreat.create!(title: "Costa Rica Retreat", description: "Anamaya Resort is truly an exotic place, built on a cliff edge and overlooking the most incredible ocean views. The resort is a few steps away from epic waterfalls, surrounded by rainforests, and located in one of the world’s most beautiful tropical beach towns. “Anamaya” is Sanskrit for “good health” and that is our focus. Our unique retreat center offers gourmet organic food, yoga teacher trainings, several types of yoga classes and yoga retreats, a variety of luxurious spa services, and an array of uniquely designed retreat packages, and workshops all in respect to the body, mind and spirit.",
address: "Montezuma, Costa Rica", instructor_id: maria)

retreat3 = Retreat.create!(title: "Colorado Retreat", description: "Offering over 100 different programs per year, taught by a remarkable array of accomplished practitioners and teachers, Shambhala Mountain Center combines the natural beauty, unspoiled wilderness, blue skies and crisp mountain air with the comforts of a modern retreat campus.
Our accommodations range from fine lodge rooms with private baths to shared same-gender dormitories and economically priced seasonal tents on wooded hillsides. Meals, with vegetarian options, are included. Shambhala Mountain Center welcomes all people with inspiration, interest and curiosity about understanding the nature of self and society.
We welcome you to join us and enjoy our beautiful location and warm hospitality.", address: "Rollinsville, CO", instructor_id: becky)

retreat4 = Retreat.create!(title: "Southern Cali Retreat", description: "La Casa de Maria is an enchanting sanctuary of tranquility in Santa Barbara, California, 90 miles north of Los Angeles. The grounds abound in a magical setting of natural beauty amid a native oak grove nestled in the foothills of the Santa Ynez Mountains overlooking the Pacific Ocean.
The Center for Spiritual Renewal is available for private retreats.We are an Inter-spiritual retreat center - open to all.
Our grounds include several spiritual theme gardens, such as our Jewish Shalom Garden; our East - West Quan Yin Garden; our Islamic Garden and our soon-to-be-installed Native American Chumash Garden.
Peace and tranquility reign supreme and a 10 p.m. noise curfew is observed. There are no radios, TV sets, telephones or data ports in the rooms.", address: "Santa Barbara, CA", instructor_id: hailey)

retreat5 = Retreat.create!(title: "India Retreat", description: "Yoga and Meditation Hall
Our open, spacious hall is surrounded by trees and greenery; it has been built for you to feel one with nature as you practice yoga and meditation. With trees and greenery surrounding you, the sound of birds to accompany your breath, flowers to fix your gaze or “dristi” upon and the sun to warm your face as you lie down in “savasana” – we feel that this hall brings positive energy to the yoga class. Practicing yoga or meditation in this space is sure to enhance your practice and take it to deeper levels.",
address: "Bangalore,India", instructor_id: anna)

bali = Photo.create!(title: "Kura Kura Retreat Center", description: "This is the retreat center in Bali", photo_url: "http://www.therivertree.com/wordpress/wp-content/uploads/2013/01/20121027Gaia_Oasis_Mountains115-1024x682.jpg", retreat_id: retreat1)
costarica = Photo.create!(title: "Anamaya Resort", description: "This is the retreat center in Costa Rica", photo_url: "http://thecostaricanews.com/wp-content/uploads/2010/01/anamaya_costa_rica_1.jpg", retreat_id: retreat2)
colorado = Photo.create!(title: "Anamaya Resort", description: "This is the retreat center in Costa Rica", photo_url: "http://static1.squarespace.com/static/52d5b347e4b03a2f95867fb9/t/536ea515e4b0fff417406872/1399760161816/Mt+Princeton+Yoga+and+Hot+Springs+retreat?format=2500w", retreat_id: retreat3)
