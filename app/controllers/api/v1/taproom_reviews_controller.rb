class Api::V1::TaproomsController < ApiController
  
  def create
    taproom = Taproom.find(params[:taproom_id])
    review = TaproomReview.create(review_params)

    review.taproom = taproom

    review.user = current_user
  end 

  def update
  end 

  def destroy
  end 

  private

  def review_params
    params.permit(:title, :body, :overall_rating, :service_rating, :ambience_rating, :group_accomodations_rating, :favorite_beer,:photo)
  end 
end