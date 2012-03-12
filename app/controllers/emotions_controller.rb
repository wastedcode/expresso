class EmotionsController < ApplicationController
  def index
    @title = params[:id]
  end

  def new
    @emotion = Emotion.new
  end

  def create
    @emotion = Emotion.new
    @emotion.name = params[:emotion][:name]
    @emotion.save!
    render :text => 'Ok'
  end

  def update

  end
end
