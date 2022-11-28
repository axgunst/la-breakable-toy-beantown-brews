class Api::V1::BeersController < ApiController
  
  def index
    # taproom = taproom.find(params[:id])
    # beers = Beer.where(taproom_id: params[:id])
    # render json: {taproom: taproom, beers: beers}
binding.pry
    render json: Beer.find(taproom)
  end

  def show   

    beer = Beer.find(params[:id])
    reviews = BeerReview.where(beer_id: params[:id])
    render json: {beer: beer, reviews: reviews}
   end

  def search
    beers = Beer.where("name ILIKE ? OR description ILIKE ?", "%#{params['search_string']}%", "%#{params['search_string']}%")
        render json: beers
  end 

  private

  def beer_params
    params.require(:beer).permit(
      :name, 
      :style,
      :abv, 
      :description, 
      :brewer, 
      :image_url
    )
  end
end