class DonationCommentsController < ApplicationController
  
  def index 
    @donation_comments = DonationComment.all 
    render :index 
  end 

  def create
    @donation_comment = DonationComment.create(
      body: params[:body]
    )
    render :show
  end

  def destroy
    @donation_comment = DonationComment.find_by(id: params[:id])
    @donation_comment.destroy
    render json: { message: "Your comment on the donation page is deleted" }
  end

end
