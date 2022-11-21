class Api::V1:BeersController < ApiController
  
  def index
    render json: Beer.all
  end

  def show   

   beer = Beer.find(params[:id])
   reviews = BeerReview.where(beer_id: params[:id])
   render json: {beer: beer, reviews: reviews}
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