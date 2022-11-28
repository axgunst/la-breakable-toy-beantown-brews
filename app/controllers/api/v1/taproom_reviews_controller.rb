class Api::V1::TaproomReviewsController < ApiController
  before_action :authenticate_user, only: [:create, :destroy, :update]
  skip_before_action :verify_authenticity_token
  
  def create
    # binding.pry
    taproom = Taproom.find(params[:taproom_id])
    review = TaproomReview.new(review_params)

    review.taproom = taproom

    review.user = current_user
    # binding.pry
    if review.save
      render json: review
    else
      render json: {errors: review.errors.full_messages.to_sentence}
    end
  end 

  def update
  end 

  def destroy
   TaproomReview.find(params[:id]).destroy
   render json: {
    deleted_message: "Your review has been deleted"
   }
  end

  def created_at
    object.created_at.strftime("%b %d %Y")
  end

  private

  def review_params
    params.permit(:title, :body, :overall_rating, :service_rating, :ambience_rating, :group_accommodations_rating, :favorite_beer,:photo)
  end 
end