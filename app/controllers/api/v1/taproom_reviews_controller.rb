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
    review_to_update = TaproomReview.find(params["id"])
    review_to_update.photo = params["photo"]
    review_to_update.update(review_params)
    taproom = review_to_update.taproom

    if review_to_update.save
      # render json: review_to_update
      render json: taproom.reviews
    else
      render json: { error: review_to_update.errors.full_messages }
    end
  end

  def destroy
    review = TaproomReview.find(params[:id])
    if current_user.id === review.user_id
      review.destroy
      render json:{review: TaproomReview.all,  message: "Review deleted!"}
    else 
      render json:{error: review.errors.full_messages}
    end
  end

  def created_at
    object.created_at.strftime("%b %d %Y")
  end

  private

  def review_params
    params.permit(:title, :body, :overall_rating, :service_rating, :ambience_rating, :group_accommodations_rating, :favorite_beer, :photo)
  end 
end
