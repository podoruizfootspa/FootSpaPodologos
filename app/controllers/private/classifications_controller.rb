class Private::ClassificationsController < Private::BaseController

	def index
		@classifications = Classification.all
	end

	def new
		@classification = Classification.new
	end

	def create
		@classification = Classification.new(classification_params)
		if @classification.save
			redirect_to private_classifications_path
		else
			render :new
		end
	end

	def destroy
		@services_classifications = ServicesClassification.where(classification_id: params[:id])
		@services_classifications.destroy_all
		@classification = Classification.find(params[:id])
		@classification.delete
		redirect_to private_classifications_path
	end

	private

	def classification_params
		params.require(:classification).permit(:title, :description)
	end
end