class Api::V1::BeersController < ApiController
  
  def index
    render json: Beer.all
  end

  def show   

   beer = beer.find(params[:id])
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