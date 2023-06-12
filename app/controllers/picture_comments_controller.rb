class PictureCommentsController < ApplicationController

  def index
    @picture_comments = PictureComment.all 
    render :index 
  end 

  def create
    @picture_comment = PictureComment.create(
    body: params[:body],
    user_id: params[:user_id]
    )
    render :show
  end  

  def destroy
    @pciture_comment = PictureComment.find_by(id: params[:id])
    @picture_comment.destroy
    render json: { message: "Comment for picture destroyed successfully" }
  end


end
