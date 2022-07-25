class DepartmentsController < ApplicationController
    
    def index
        @departments = Department.all
        @employees = @departments.map { |department| department.employees}.flatten
    end
    
end