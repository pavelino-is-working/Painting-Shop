class HomeController < ApplicationController
  

  def index
  	@paintings = Painting.all
  end

  def search
  end
end
