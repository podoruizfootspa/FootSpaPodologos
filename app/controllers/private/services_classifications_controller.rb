class Private::ServicesClassificationsController < Private::BaseController

	def new
		@services_classification = ServicesClassification.new
		@services_classification.classification_id = params[:classification_id]
		@classification = Classification.find(params[:classification_id])
		if ServicesClassification.where(classification_id: params[:classification_id]).count > 0
			@services = Service.where("id not in (#{ServicesClassification.where(classification_id: params[:classification_id]).pluck(:service_id).join(',')})")
		else
			@services = Service.all
		end
	end

	def create
		@services_classification = ServicesClassification.new(service_classification_params)
		if @services_classification.save
			redirect_to private_classifications_path
		else
			render :new
		end
	end

	def destroy
		@services_classification = ServicesClassification.find(params[:id])
		@services_classification.delete
		redirect_to private_classifications_path
	end

	private

	def service_classification_params
		creation_params = { service_id: params[:service_id], classification_id: params[:classification_id] }
	end
end
