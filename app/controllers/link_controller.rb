class LinkController < ApplicationController
  def create
    @link = Link.new(:url=>params[:url])

    @target=target.find_by_name(params[:target_name])
    @link.target_id = @target.id
    @link.save
#      redirect_to @link
  end
end
