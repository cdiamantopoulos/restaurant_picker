class HomeController < ApplicationController
	before_filter :redirect_if_logged_in
  
  def page_not_found
    render 'home/page_not_found'
  end

end
