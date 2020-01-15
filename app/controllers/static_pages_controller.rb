require 'flickraw'

class StaticPagesController < ApplicationController
	include StaticPagesHelper

		FlickRaw.api_key = ENV['FLICKRAW_API_KEY']
		FlickRaw.shared_secret = ENV['FLICKRAW_SHARED_SECRET']

  def home
  	if !params[:user_id].blank?
  		@user_id = flickr.people.getInfo(:user_id => params[:user_id])
  	     	get_pics_by_id
  		end
  	end

end
