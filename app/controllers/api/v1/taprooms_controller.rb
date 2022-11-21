class Api::V1::TaproomsController < ApiController
  
  def index
    render json: Taproom.all
  end

  def show   
    binding.pry
   taproom = Taproom.find(params[:id])
   reviews = TaproomReview.where(taproom_id: params[:id])
   render json: {taproom: taproom, reviews: reviews}
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