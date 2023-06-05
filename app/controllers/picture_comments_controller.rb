class PictureCommentsController < ApplicationController

  def index 
    @picture_comments = PictureComment.all 
    render :index 
  end 

  def create
    @picture_comment = PictureComment.create(
    body: params[:body]
    )
    render :show
  end  

end
