class Api::V1::BeerReviewsController < ApiController
  before_action :authenticate_user, only: [:create, :destroy, :update]
  skip_before_action :verify_authenticity_token
  
  def create
    taproom = Beer.find(params[:taproom_id])
    review = BeerReview.new(review_params)

    review.beer = beer

    review.user = current_user
  
    if review.save
      render json: review
    else
      render json: {errors: review.errors.full_messages.to_sentence}
    end
  end 

  def update
  end 

  def destroy
   BeerReview.find(params[:id]).destroy
   render json: {
    deleted_message: "Your review has been deleted"
   }
  end

  def created_at
    object.created_at.strftime("%b %d %Y")
  end

  private

  def review_params
    params.permit(:title, :name, :overall_rating, :pour, :description, :photo)
  end 
end