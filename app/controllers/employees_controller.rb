class EmployeesController < ApplicationController
	def index
		@employee = Employee.all
	end

	def show
		@employee = Employee.find(params[:id])
	end

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

	def preview
		@employee = Employee.find(params[:id])
	end

	private
	def employee_params
		params.require(:employee).permit(:name, :gender, :email, :password, :joining_date)
	end

end
