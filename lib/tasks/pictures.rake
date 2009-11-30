
namespace :pictures do
  task(:load => :environment) do
    flickr = Flickr.new(File.join(RAILS_ROOT, 'config', 'flickr.yml'))
    (1..5).each do |page|
      puts "grabbing page #{page}"
      photos = flickr.photos.search(:user_id => SARA_FLICKR_ID,
                                    :page => page)
      photos.each do |photo|
        pic = photo.sizes.find{|p| p.label == "Medium"}
        next if pic.nil?
        Picture.create(:url => pic.source, :width => pic.width, :height => pic.height)
      end
    end
  end
end
