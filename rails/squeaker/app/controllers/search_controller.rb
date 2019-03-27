class SearchController < ApplicationController
  def show
    @messages = Message.like(params[:query])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @messages }
    end
  end
end
