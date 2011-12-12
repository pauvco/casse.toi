class LinkController < ApplicationController
  def create
    @link = Link.new(:url=>params[:url])
    @link.target_id = params[:target_id]
    @link.save

    respond_to do |format|
      format.html
      format.json { render :json => @link.to_json }
    end
  end
end
