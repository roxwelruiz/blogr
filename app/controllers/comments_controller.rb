class CommentsController < ApplicationController
	def create
		@article = Article.find(params[:article_id])
		@comment = @article.comments.new(comment_params)
		@comment.user = current_user

		respond_to do |format|
			if @comment.save
				format.html { redirect_to @article, notice: 'The comment was successfully created.' }
				format.json { render :show, status: :created, location: @article }
			else
				format.html { redirect_to @article, alert: 'The comment was not successfully saved.' }
				format.json { render json: @comment.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@comment = Comment.find(params[:id])
		article = @comment.article

		authorize! :destroy, @comment, :message => "You are not authorized to delete comments."

		@comment.destroy

    respond_to do |format|
      format.html { redirect_to article, notice: 'The comment was successfully deleted.' }
      format.json { head :no_content }
    end
	end

	private

	def comment_params
		params.require(:comment).permit(:user_id, :title, :body)
	end
end
