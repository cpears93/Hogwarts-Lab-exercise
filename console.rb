require("pry")

require_relative("./models/student")
require_relative("./models/house")

Student.delete_all
House.delete_all

house1 = House.new({'name' => 'Gryffindor',
                    'logo' =>'https://vignette.wikia.nocookie.net/harrypotter/images/b/b1/Gryffindor_ClearBG.png/'})

house2 = House.new({'name' => 'Hufflepuff',
                    'logo' =>'https://vignette.wikia.nocookie.net/harrypotter/images/0/06/Hufflepuff_ClearBG.png/'})

house3 = House.new({'name' => 'Ravenclaw',
                    'logo' =>'https://vignette.wikia.nocookie.net/harrypotter/images/4/4e/RavenclawCrest.png/'})

house4 = House.new({'name' => 'Slytherin',
                    'logo' =>'https://vignette.wikia.nocookie.net/harrypotter/images/0/00/Slytherin_ClearBG.png/'})

house1.save
house2.save
house3.save
house4.save

student1 = Student.new({'first_name' => 'Harry',
                        'last_name' => 'Potter',
                        'house' => house1.id,
                        'age' => 16})
student2 = Student.new({'first_name' => 'Ron',
                        'last_name' => 'Weasley',
                        'house' => house1.id,
                        'age' => 15})
student3 = Student.new({'first_name' => 'Draco',
                        'last_name' => 'Malfoy',
                        'house' => house4.id,
                        'age' => 16})
student4 = Student.new({'first_name' => 'Cedric',
                        'last_name' => 'Diggory',
                        'house' => house2.id,
                        'age' => 17})

student1.save
student2.save
student3.save
student4.save



binding.pry
nil
