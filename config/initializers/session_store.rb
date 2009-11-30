# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_flickr_screen_session',
  :secret      => '3940b1eefb3efa328031c1910c9f1ec8bce882d02ae671da78ed13c5f7bc955713cbdff6eec1d9806c96ba53a3922598ff762a51f24e7999cb7c472d957ce7c4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
