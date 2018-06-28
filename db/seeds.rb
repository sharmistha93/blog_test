# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'moleculeDB.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Molecule.new
  t.name = row['name']
  t.central_atom = row['central_atom']
  t.other_atoms = row['other_atoms']
  t.num_atoms = row['num_atoms']
  t.save
  puts "#{t.name}, #{t.central_atom}, #{t.other_atoms}, #{t.num_atoms}, saved"
end

puts "There are now #{Molecule.count} rows in the transactions table"





