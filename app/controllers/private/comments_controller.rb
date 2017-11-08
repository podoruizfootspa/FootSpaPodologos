class Private::CommentsController < Private::BaseController

	def index
		@comments = Comment.where(status: params[:status]).reverse
		@count_approved_comments = Comment.where(status: 0).count
		@count_to_approve_comments = Comment.where(status: 1).count
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to private_comments_path status: 1
	end

	def approve_comment
		@comment = Comment.find(params[:comment])
		@comment.status = 0
		@comment.save
		redirect_to private_comments_path status: 0
	end
end
