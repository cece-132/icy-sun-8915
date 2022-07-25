require 'rails_helper'

RSpec.describe 'show#page' do
  describe 'User Story 2' do
    it 'can view the employees name, department, and a list of all their tickets' do
      candys_dept = Department.create!(name: "Candy's Department", floor: "102nd")
      kekes_dept = Department.create!(name: "Keke's Department", floor: "253rd")
    
      marie = candys_dept.employees.create!( name: "Marie", level: 8)
      sherri = candys_dept.employees.create!(name: "Sherri", level: 32)

      jerri = kekes_dept.employees.create!(name: "Jerri", level: 2)
      barry = kekes_dept.employees.create!(name: "Barry", level: 5)

      printer = sherri.tickets.create!(subject: 'Printers broken', age: 6)
      door = sherri.tickets.create!(subject: 'Doors broken', age: 3)

      scanner = jerri.tickets.create!(subject: 'Scanners broken', age: 1)
      id_card = jerri.tickets.create!(subject: 'Id card unscanable', age: 14)

      visit "departments/#{candys_dept.id}"

      expect(page).to have_content("Employee Name: Marie")
      expect(page).to have_content("Department: Candy's Department") 

      expect(page).to have_content("Employee Name: Sherri")
      expect(page).to have_content("Department: Candy's Department") 


      visit "departments/#{kekes_dept.id}"

      expect(page).to have_content("Employee Name: Jerri")
      expect(page).to have_content("Department: Keke's Department") 
      expect(page).to have_content("Tickets: Scanners broken, Id card unscanable") 

      expect(page).to have_content("Employee Name: Barrie")
      expect(page).to have_content("Department: Keke's Department") 
      expect(page).to have_content("Tickets: ") 

    end

    it 'lists the tickets from oldest to youngest'

    it 'shows the oldest ticket for the employees separately'
  end
end