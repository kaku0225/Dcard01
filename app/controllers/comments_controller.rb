class CommentsController < ApplicationController
  before_action :session_sign_in


  def create
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.new(params_commment)
    @comment.post = @post
    if @comment.save
      render text:'hi'
    else
      render 'posts/show'
    end
  end

  def destroy
    comment = current_user.comments.find(params[:id])
    comment.destroy
    redirect_to comment.post, notice:'留言已刪除'
  end





  private
  def params_commment
    params.require(:comment).permit(:content)
  end
end