class GeofencesController < ApplicationController
	def index
		@geofences = Geofence.all
	end

	def show
		@geofence = Geofence.find(params[:id])
	end

	def new
		@geofence = Geofence.new
	end

	def edit
		@geofence = Geofence.find(params[:id])
	end

	def create
		@geofence = Geofence.new(geofence_params)

		if @geofence.save
			redirect_to geofences_path
		else
			render 'new'
		end
	end

	def update
		@geofence = Employee.find(params[:id])

		if @geofence.update(geofence_params)
			redirect_to @geofence
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
		def geofence_params
			params.require(:geofence).permit(:latitude, :longitude, :radius)
		end
end
