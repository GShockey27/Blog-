class StoryController < ApplicationController
  def index
    @story = Story.all
  end

  def create
    @story = Story.create(safe_story_params)
    redirect to '/'
  end

  def new
    @story = Story.new
  end

  def edit
    #@story = Story.find(params[:id])
  end

  def show
    @story = Story.find(params[:id])
  end

  private
    def safe_story_params
      params.require('story').permit(:title, :link, :upvotes, :category)
    end

    # def restrict_access
    #   redirect_to login_path if @current_user.nil?
    # end
end
