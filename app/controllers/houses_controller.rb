class HousesController < ApplicationController

  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)
    @house.user_id = current_user.id
    if @house.save
    redirect_to house_path(@house)
    else
      render :new
    end
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = House.find(params[:id])
    if @house.update(house_params)
    redirect_to house_path(@house)
    else
      render :template => "houses/edit"
    end
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy
    redirect_to houses_path
  end

  def show
    @house = House.find(params[:id])

  end

  def index
    @houses = House.all
  end

  private

  def house_params
      params.require(:house).permit(:user_id,
                                    :size,
                                    :built,
                                    :numberofparking,
                                    :numberofstorage,
                                    :numberofwindow,
                                    :numberofgate,
                                    :descripofstorage,
                                    :sizeofparking,
                                    :typeofparking,
                                    :type,
                                    :address,
                                    :powervalue,
                                    :string,
                                    :balcony,
                                    :road,
                                    :cooker,
                                    :floor, #樓層
                                    :floormaterial,
                                    :typeofbuilding,
                                    :housestatus,
                                    :neighboar,
                                    :link,
                                    :clozet,
                                    :layout,
                                    :supplementary,
                                    :bed,
                                    :bath,
                                    :price,
                                    :pricesqft,
                                    :hoa,
                                    :latitude,
                                    :longitude,
                                    :bus,
                                    :showerhead,
                                    :diningbar,
                                    :drain,
                                    :elevator,
                                    :commonplace,
                                    :packagereceiver,
                                    :gym,
                                    :checked
                                    )
    end
end
