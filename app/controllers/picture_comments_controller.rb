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
    @picture_comment = PictureComment.find_by(id: params[:id])
    @picture_comment.destroy
    render json: { message: "Your comment for this picture has been deleted" }
  end


end
