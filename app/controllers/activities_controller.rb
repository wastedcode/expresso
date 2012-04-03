class ActivitiesController < ApplicationController
  def index
    @title = params[:id]
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new
    @activity.name = params[:activity][:name]
    @activity.save!
    render :text => 'Ok'
  end

  def update

  end

end
