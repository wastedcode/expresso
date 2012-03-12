# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_expresso_session',
  :secret      => '167b4a668ea6f0e132798d62e2abe7202ebb98a3ffc79f03b3f32a760f721d264d99827aade432b8186ba19c398acb80c8c8c53d4e163776da23482abbfb11bc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
