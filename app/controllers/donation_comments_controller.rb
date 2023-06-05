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


end
