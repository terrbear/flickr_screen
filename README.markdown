Summary
-------

This is an app that, given your flickr id and API key and whatnot, can scroll the pictures across the screen. It's meant to be a nice way to present a group of pictures or something if you don't want to make everyone click it. 

Setup
-----

This is a Rails 2.3.5 application. The easiest production setup involves Phusion Passenger (in my opinion), but that is out of the scope of this document.

First, you'll need to set your flickr id. Set that in config/initializers/flickr.rb.

Next, you'll want to establish your Flickr API credentials. Those are in config/flickr.yml (copy the flickr.yml.example over and edit the appropriate fields).

After that, you'll need to pre-load some pictures. All pictures URLs are pulled from a Sqlite database. You can load that with the handy dandy rake task like so: `rake pictures:load`

Then you can just run script/server and visit http://localhost:3000 in your browser and see your pictures scrolling.


