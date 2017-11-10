class Public::PagesController < Public::BaseController

	def home
		@services = Service.all
	end

	def service
		@service = Service.find(params[:id])
		@comment = Comment.new
		@comments = Comment.where(service_id: params[:id], status: 0).order(id: :desc)
	end

	def login
		render layout: false
	end

	private

	def comment_params
		params.require(:comment).permit(:title, :body, :users_name, :status, :service_id)
	end
end
