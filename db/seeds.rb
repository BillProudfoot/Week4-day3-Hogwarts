require_relative('../models/student')
require_relative('../models/house')

Student.delete_all

House.delete_all



house1 = House.new({
  "name" => "Gryffindor",
  "logo" => "G",
  })

house2 = House.new({
  "name" => "Hufflepuff",
  "logo" => "P",
  })
house3 = House.new({
  "name" => "Ravenclaw",
  "logo" => "R",
  })
house4 = House.new({
  "name" => "Slytherin",
  "logo" => "S",
  })

house1.save
house2.save
house3.save
house4.save

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => "Gryffindor",
  "house_id" => house1.id,
  "age" => 18
})
 
  student2 = Student.new({
    "first_name" => "Draco",
    "last_name" => "Molfoy",
    "house" => "Slytherin",
    "house_id" => house4.id,
    "age" => 17
})



student1.save
student2.save