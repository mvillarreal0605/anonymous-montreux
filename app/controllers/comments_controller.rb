class CommentsController < ApplicationController
  def create
    @comment       = Comment.new(comment_params)
    @comment.image = "https://picsum.photos/id/#{[*0..1000].sample}/50/50"

    if @comment.save
      flash[:notice] = "Your comment was created"
      redirect_to root_path
    end
  end
  
  def index
    @comment  = Comment.new
    @comments = Comment.all
  end

  private

  def comment_params
  	params.require(:comment).permit(:text, :image)
  end
end
