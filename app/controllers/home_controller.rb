class HomeController < ApplicationController
  def index
  	@story = Story.all
  end
end
