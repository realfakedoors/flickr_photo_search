module StaticPagesHelper
  require 'flickraw'
  
  def valid_flickr_user?(user_id)
    begin
      flickr.people.getPhotos(api_key: ENV["FLICKR_API_KEY"], user_id: user_id, extras: "url_m")
    rescue
      false
    end
  end
  
  def find_photos(user_id)
    flickr.people.getPhotos(user_id: user_id, extras: "url_m")
  end
  
  def find_username(photo)
    flickr.people.getInfo(user_id: photo.owner).username
  end
end
