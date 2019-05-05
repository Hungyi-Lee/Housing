class TopController < ApplicationController
  def index
    @houses = House.all
  end
end
