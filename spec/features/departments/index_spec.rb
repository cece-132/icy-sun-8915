require 'rails_helper'

RSpec.describe 'index#page' do
  describe 'User Story 1' do
    it 'shows the departments name and floor' do
      scotts_dept = Department.create(name: "Scott's Depeartment", floor: "5th")
      jims_dept = Department.create(name: "Jim's Depeartment", floor: "32nd")
      candys_dept = Department.create(name: "Candy's Depeartment", floor: "102nd")
      kekes_dept = Department.create(name: "Keke's Depeartment", floor: "253rd")

      visit "/departments"

      within "#departments-#{scotts_dept.id}" do
        expect(page).to have_content("Department Name: Scott's Depeartment")
        expect(page).to have_content("Located on the 5th floor") 
      end

      within "#departments-#{jims_dept.id}" do
        expect(page).to have_content("Department Name: Jim's Depeartment")
        expect(page).to have_content("Located on the 32nd floor") 
      end

      within "#departments-#{candys_dept.id}" do
        expect(page).to have_content("Department Name: Candy's Depeartment")
        expect(page).to have_content("Located on the 102nd floor") 
      end

      within "#departments-#{kekes_dept.id}" do
        expect(page).to have_content("Department Name: Keke's Depeartment")
        expect(page).to have_content("Located on the 253rd floor") 
      end
    end

    it 'underneath the departments it shows all the employees' do
      scotts_dept = Department.create(name: "Scott's Depeartment", floor: "5th")
      jims_dept = Department.create(name: "Jim's Depeartment", floor: "32nd")

      marry = scotts_dept.employees.create(name: "Marry", level: 5)
      gina = scotts_dept.employees.create(name: "Gina", level: 10)

      dante = jims_dept.employees.create(name: "Dante", level: 16)
      deshaun = jims_dept.employees.create(name: "Deshaun", level: 11)

      visit "/departments"

      
    end
  end
end