class ReviewsController < ApplicationController
  def new
   @review = Review.new
  end
  def create
    @review = Review.new(review_params)  # フォームから送られてきたデータ(body)をストロングパラメータを経由して@tweetに代入
    @review.user_id = current_user.id # user_idの情報はフォームからはきていないので、deviseのメソッドを使って「ログインしている自分のid」を代入
    @review.save
    redirect_to reviews_path
  end
  def edit
  end
  def update
  end
  def destroy
  end
    
  end
  private
  def review_params
    params.require(:review).permit(:id, :title, :comment)
  end
end
