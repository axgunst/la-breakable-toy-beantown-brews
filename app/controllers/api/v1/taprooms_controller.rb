class Api::V1::TaproomsController < ApiController
  # before_action :authenticate_user
  skip_before_action :verify_authenticity_token

  def index
    render json: Taproom.all
  end

  def show   
  # binding.pry
   taproom = Taproom.find(params[:id])
   reviews = TaproomReview.where(taproom_id: params[:id])
  #  binding.pry
   beers = Beer.find(params[:id])
   render json: {taproom: taproom, reviews: reviews, current_user: current_user}

  end

  def search
    taprooms = Taproom.where("name ILIKE ? OR description ILIKE ?", "%#{params['search_string']}%", "%#{params['search_string']}%")
        render json: taprooms
  end 

  private

  def taproom_params
    params.require(:taproom).permit(
      :name, 
      :address, 
      :city,
      :state,
      :zipcode,
      :monday_hours, 
      :tuesday_hours, 
      :wednesday_hours, 
      :thursday_hours, 
      :friday_hours, 
      :saturday_hours, 
      :sunday_hours, 
      :description, 
      :dogs, 
      :kitchen,
      :patio,
      :logo,
      :image_url, 
      :instagram, 
      :twitter, 
      :facebook, 
      :official_webpage,
    )
  end
end