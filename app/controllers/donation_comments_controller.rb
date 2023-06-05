class DonationCommentsController < ApplicationController
  
  def index 
    @donation_comment = DonationComment.all 
    render :index 
  end 

  def create
    @donation_comment = DonationComment.create(
      body: params[:body]
    )
    render :show
  end


end
