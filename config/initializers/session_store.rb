# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_FairUse_session',
  :secret      => '862f8d58745846c189dcd6ac0f7dd1d0f1fc4c63308bdbeacecaa627369d5f907999e8675809794332142335affa12b68989c26085293c2a26438f17564c4991'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
