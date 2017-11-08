class Public::PagesController < Public::BaseController

	def home
		@services = Service.all
	end

	def service
		@service = Service.where(name: params[:name])
	end

	def login
		render layout: false
	end
end
