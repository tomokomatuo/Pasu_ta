class ReviewsController < ApplicationController
  layout 'review'
  before_action :set_review, only: [:edit, :update, :show, :destroy]
  
  def index
    @reviews = Review.all
  end
  
  def new
   @review = Review.new
  end
  
  def create
    @review = current_user.seeker.reviews.create(stylist_id: params[:stylist_id])
    binding.irb
    if @review.save
      redirect_to reviews_path
    end
    # binding.irb
  end
  
  def edit
  end
  
  def update
    if @review.update(params_review)
      redirect_to reviews_path
    else
      render :edit
    end
  end
  
  def destroy
    @review.destroy
    redirect_to reviews_path
  end
    
  private
  def review_params
    params.require(:review).permit(:id, :title, :comment, :seeker_id, :stylist_id)
  end

  def set_review
    @review = current_user.seeker.reviews.find_by(id: params[:id])
  end
end
