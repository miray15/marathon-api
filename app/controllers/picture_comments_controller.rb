class PictureCommentsController < ApplicationController

  def index 
    @picture_comment = PictureComment.all 
    render :index 
  end 

  def create
    @picture_comments = PictureComment.create(
    body: params[:body]
    )
    render :show
  end  

end
