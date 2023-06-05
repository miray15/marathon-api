class DonationCommentController < ApplicationController

  def create
    @donation_comment = DonationComment.create(
      body: params[:body]
    )
    render :show
  end

  def index 
    @donation_comment = DonationComment.all 
    render :index 
  end 

end
