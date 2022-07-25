# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Departments
scotts_dept = Department.create(name: "Scott's Depeartment", floor: "5th")
jims_dept = Department.create(name: "Jim's Depeartment", floor: "32nd")
candys_dept = Department.create(name: "Candy's Depeartment", floor: "102nd")
kekes_dept = Department.create(name: "Keke's Depeartment", floor: "253rd")

#Employees
marry = scotts_dept.employees.create(name: "Marry", level: 5)
gina = scotts_dept.employees.create(name: "Gina", level: 10)

dante = jims_dept.employees.create(name: "Dante", level: 16)
deshaun = jims_dept.employees.create(name: "Deshaun", level: 11)

marie = candys_dept.employees.create( name: "Marie", level: 8)
sherri = candys_dept.employees.create(name: "Sherri", level: 32)

jerri = kekes_dept.employees.create(name: "Jerri", level: 2)
barry = kekes_dept.employees.create(name: "Barry", level: 5)

#tickets
printer = jerri.tickets.create(subject: 'Printers broken', age: 6)
door = jerri.tickets.create(subject: 'Doors broken', age: 3)

scanner = marie.tickets.create(subject: 'Scanners broken', age: 1)
id_card = marie.tickets.create(subject: 'Id card unscanable', age: 14)

break_room = dante.tickets.create(subject: 'Fridge is warm', age: 1)
coffee_maker = dante.tickets.create(subject: 'Coffee maker is broken', age: 6)

key_board = gina.tickets.create(subject: 'Key board is broken', age: 7)
mouse = gina.tickets.create(subject: 'Mouse is broken', age: 2)