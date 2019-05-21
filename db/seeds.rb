puts "Cleaning up DB..."
Dog.destroy_all

DOGS = [
  {
    name: 'Kogi',
    breed: 'German Shorthaired Pointer',
    birthdate: '2014-03-23',
    colour: 'liver & white ticked'
  },
  {
    name: 'Charlie',
    breed: 'Poodle',
    birthdate: '2016-06-12',
    colour: 'brown'
  },
  {
    name: 'Ruby',
    breed: 'Sakhalin Husky',
    birthdate: '2006-05-07',
    colour: 'red'
  }
]

puts "Creating dogs..."
Dog.create!(DOGS)

puts "Created #{Dog.count} dog(s)."
