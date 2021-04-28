class HomeController < ApplicationController
  

  def index
  	@paintings = Painting.all
  	@only_25_paintings = @paintings.slice(0, 25)
  	@number_records = @only_25_paintings.length()
  	get_rows
  end

  def search
  end

  def get_rows
  	@rows = @number_records / 5
  	if @number_records % 5 != 0
  		@rows = @rows + 1
  	end
  end
end
