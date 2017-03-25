# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

start = Time.now
puts '~> Types: Seeding ...'
Type.create!([
  { value: 'Text' },
  { value: 'Text Area' },
  { value: 'Combo Box' }
]) do |type|
  puts '   - create_type:(%s)' % [type.value]
end
puts '~> Types: Seeded (%.4fs).' % [Time.now - start], ''
