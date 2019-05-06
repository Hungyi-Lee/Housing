class TopController < ApplicationController
  def index
    @houses = House.all
    @checkedhouses = House.where(:houses => { checked: 'true' } ).all
  end

  def checkeditems
    @houses = House.where(:houses => { checked: 'true' } ).all
  end
end
