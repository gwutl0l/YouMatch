Omnisocial.setup do |config|
  
   #==> Twitter
   config.twitter 'p0uNtjNyvjwlZ5OTUHxMIw', 'QB0qvYiRo1kCIKUmIxayagTSrmwAGIZ4NAj9HbfaW8'
  
   #==> Facebook
   config.facebook '0396d36de291d9e0d8e7323af545e196', '0e4a1cbd90d9f24c9343b5d45d1a03cb', :scope => 'publish_stream'
  
  if Rails.env.production?
    
    # Configs for production mode go here
    
  elsif Rails.env.development?
    
    # Configs for development mode go here
    
  end
  
end
