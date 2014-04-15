class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    review = Review.create(order_params)
    # render action: "thankyou"
    # This is where we write to the database and then redirect to a page
  end


  def show
  end

  private
    def review_params
      params.require(:comment).permit(:commenter, :body)
    end
end
