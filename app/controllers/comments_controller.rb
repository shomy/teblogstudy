class CommentsController < ApplicationController
  before_action :set_comment,only: [:destroy, :edit, :update]

  def create
    @comment = current_user.comments.build(comment_params)
    @topic = @comment.topic
    respond_to do |format|
      if @comment.save
        format.html { redirect_to topic_path(@topic), notice: 'コメントを投稿しました。' }
        format.js {render :index}
      else
        format.html{ render :new }
      end
    end
  end
  def destroy
    @comment.destroy
    respond_to do |format|
      format.js {render :index}
    end
  end

  def edit
    @topic = @comment.topic
  end

  def update
    @topic = @comment.topic
    if @comment.update(comment_params)
     redirect_to topic_path(@topic.id)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:topic_id,:content,:id)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

end
