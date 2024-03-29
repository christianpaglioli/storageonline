# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_storageonline_session',
  :secret      => '835403270bdc421d3134bab330c98821c58d04217786c9738b1e7ecaf2e107f082961db53e4aea5a0040c5e688a58117b7b15282d0f01da46b09e24c072eee99'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
