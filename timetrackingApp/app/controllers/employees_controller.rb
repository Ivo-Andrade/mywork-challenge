class EmployeesController < ApplicationController
	def index
		if params[:search]
			@employees = Employee.where('contract_ID LIKE ?', "%#{params[:search]}%")
		else
			@employees = Employee.all
		end
	end

	def show
		@employee = Employee.find(params[:id])
	end

	def new
		@employee = Employee.new
	end

	def edit
		@employee = Employee.find(params[:id])
	end

	def create
		@employee = Employee.new(employee_params)

		if @employee.save
			redirect_to welcome_index_path
		else
			render 'new'
		end
	end

	def update
		@employee = Employee.find(params[:id])

		if @employee.update(employee_params)
			redirect_to @employee
		else
			render 'edit'
		end
	end

	def destroy
		@employee = Employee.find(params[:id])
		@employee.destroy

		redirect_to employees_path
	end

	private
		def employee_params
			params.require(:employee).permit(:name, :contract_ID, :password, :password_confirmation, :profile_desc)
		end

		def search_params
			params.require(:search).permit(:contract_ID)
		end
end
