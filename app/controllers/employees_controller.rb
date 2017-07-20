class EmployeesController < ApplicationController
	def new
		@employee = Employee.new
	end

	def create
		@employee = Employee.new(employee_params)
		if @employee.save
			redirect_to @employee
		else
			render 'new'
		end
	end

	private
	def employee_params
		params.require(:employee).permit(:name, :gender, :email, :password, :joining_date)
	end
end
