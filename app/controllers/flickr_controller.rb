class FlickrController < ApplicationController
  layout 'flickr'

  def grab_pic
    pic = Picture.find(rand(500))
    render :json => 
    {
      :height => pic.height,
      :left => (rand(1400) - pic.width).abs,
      :url => pic.url,
      :zindex => rand(10)
    }.to_json
  end
end
