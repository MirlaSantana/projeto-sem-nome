# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Local.create(name: 'teste', country: 'brasil', state: 'pi', city: 'picos', zipcode: '64600000')

Project.create(name: 'teste', local_id: 1, size: 400, start_date: Time.now)

Theme.create(project_id: 1, name: 'Teste 1')
Theme.create(project_id: 1, name: 'Teste 2')
Theme.create(project_id: 1, name: 'Teste 3')

puts "dados inseridos..."