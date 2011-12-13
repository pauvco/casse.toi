class TargetController < ApplicationController
  def show
	@target = Target.find_by_name(params[:name])

	if @target.validated || user_signed_in?
puts "OK"
	else
		redirect_to url_for(:controller => 'home', :action => 'index')
	end
  end


  def create
    @target = Target.new(:name=>params[:target_name])
    @target.save
    @link = Link.new(:url=>params[:url],:target_id=>@target.id)
    @link.save

    respond_to do |format|
      format.html
      format.json { render :json => @target.to_json(:include => {:links => {}})}
    end
  end
end
