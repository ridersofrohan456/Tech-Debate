class CommentsController < ApplicationController
  def edit
  end

  def update
  end

  def new

  end

  def create
    comment = Comment.new(comment_params)
    if comment.save
      flash[:success] = "Thanks for contributing!"
    else
      flash[:danger] = comment.errors.messages
    end
    redirect_to :back # Go back to page regardless
  end

  private

  def comment_params
    params.require(:comment).permit(:authored_by, :description, :debate_id, :side)
  end
end
