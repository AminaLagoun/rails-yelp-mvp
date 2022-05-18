class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new

  end



  def create
      @restaurant = Restaurant.new(restaurant)
      if @restaurant.save
          flash[:success] = "Your listing was successfully saved."

      else
          render 'new'
      end
  end


  def show
    # Note sometimes you don't need to add anything other than declaring the method
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    # Note sometimes you don't need to add anything other than declaring the method
  end

  def update
    if @restaurant.update(restaurant)
        flash[:success] = "Your listing was successfully updated."
    else
        render 'edit'
    end
  end

end
