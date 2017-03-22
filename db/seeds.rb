# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts '== Generating Types ==========================================================='
start = Time.now
Type.create!([{ value: 'Text' }, { value: 'Text Area' }, { value: 'Combo Box' }])
puts "== [OK] (%.4fs) =============================================================" % [Time.now - start]
