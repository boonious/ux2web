# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_hello_tog_session',
  :secret      => 'dd7e16e2fe3284db1e90b24916748678a1f266b1b531fac63167501c4f5160625d853bd7f8d85d94024c9d834a5d427c595f95ee96efc1d634d939c6dd4f596c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
