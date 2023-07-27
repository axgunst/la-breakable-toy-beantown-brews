class Api::V1::BrandsController < ApiController
  # before_action :authenticate_user
  skip_before_action :verify_authenticity_token

  def index
    render json: Brand.all
  end

  def show   
  # binding.pry
   brand = Brand.find(params[:id])
   taprooms = Taproom.where(brand_id: params[:id])

  #  binding.pry
   beers = Beer.where(brand_id: params[:id])
   render json: {brand: brand, taprooms: taproom, beers: beers, current_user: current_user}

  end

  def search
    brands = Brand.where("name ILIKE ? OR description ILIKE ?", "%#{params['search_string']}%", "%#{params['search_string']}%")
        render json: taprooms
  end 

  private

  def brand_params
    params.require(:brand).permit(
      :name, 
      :logo,  
      :image_url, 
      :description, 
      :instagram, 
      :twitter, 
      :facebook, 
      :official_webpage,
      :tours,
      :tour_tickets
    )
  end
end