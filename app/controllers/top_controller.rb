class TopController < ApplicationController
  def index
    @houses = House.all
    @checkedhouses = House.where(:houses => { checked: 'true' } ).all
    @favoritehouses = House.where(:houses => { likeornot: 'Super Like' } ).all
    @dislikehouses = House.where(:houses => { likeornot: 'Dislike' } ).all
  end

  def checkeditems
    @houses = House.where(:houses => { checked: 'true' } ).all
  end

  def favoriteitems
    @houses = House.where(:houses => { likeornot: 'Super like' } ).all
  end

  def dislikeitems
    @houses = House.where(:houses => { likeornot: 'Dislike' } ).all
  end

end
