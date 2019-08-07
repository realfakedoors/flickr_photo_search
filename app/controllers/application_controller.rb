class ApplicationController < ActionController::Base
  require 'flickraw'
  
  FlickRaw.api_key       = ENV["FLICKR_API_KEY"]
  FlickRaw.shared_secret = ENV["FLICKR_SHARED_SECRET"]
end
