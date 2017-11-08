class Private::ServicesController < Private::BaseController
	
	def index
		params[:q] ||= {}
		@q = Service.ransack(params[:q])
		@services = @q.result(distinct: true)
	end

	def show
		@service = Service.find(params[:id])
	end

	def new
		@service = Service.new
	end

	def create
		params[:service][:name].strip!
		uploaded_io = params[:service][:image]
		uploaded_io.original_filename = "service_#{params[:service][:name].gsub(' ', '_').camelize}.jpg"
		params[:service][:image] = "service_#{params[:service][:name].gsub(' ', '_').camelize}.jpg"
		File.open(Rails.root.join('app', 'assets', 'images', 'services', uploaded_io.original_filename), 'wb') do |file|
			file.write(uploaded_io.read)
		end
		@service = Service.new(service_params)
		if @service.save
			redirect_to [:private, @service]
		else
			render :new
		end
	end

	def edit
		@service = Service.find(params[:id])
	end

	def update
		params[:service][:name].strip!
		uploaded_io = params[:service][:image]
		uploaded_io.original_filename = "service_#{params[:service][:name].gsub(' ', '_').camelize}.jpg"
		params[:service][:image] = "service_#{params[:service][:name].gsub(' ', '_').camelize}.jpg"
		File.open(Rails.root.join('app', 'assets', 'images', 'services', uploaded_io.original_filename), 'wb') do |file|
			file.write(uploaded_io.read)
		end
		@service = Service.find(params[:id])
		if @service.update(service_params)
			redirect_to [:private, @service]
		else
			render :edit
		end
	end

	def destroy
		@service = Service.find(params[:id])
		@service.destroy
		redirect_to private_services_path
	end

	private

	def service_params
		params.require(:service).permit(:name, :price, :invitation, :description, :image)
	end
end
