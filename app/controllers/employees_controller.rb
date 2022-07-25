class EmployeesController < ApplicationController
    
    def show
        @department = Department.find(params[:id])
        @employees = Department.find(params[:id]).employees
        @tickets
    end
    
end