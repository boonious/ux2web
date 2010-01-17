require 'oauth/controllers/consumer_controller'
class OauthConsumersController < ApplicationController
  include Oauth::Controllers::ConsumerController
  
  def index
    # @consumer_tokens=ConsumerToken.all :conditions=>{:user_id=>current_user.id}
    
    # Instead return tokens of any 'current_user', otherwise empty array. 
    # This remove the dependency of a logged in user
    # so that the plugin can be used as a primary login mechanism. 
    # And this shows a list of oauth targets to users
    @consumer_tokens = (current_user && (ConsumerToken.all :conditions=>{:user_id=>current_user.id})) || []  
    @services=OAUTH_CREDENTIALS.keys-@consumer_tokens.collect{|c| c.class.service_name}
  end
  
  protected
  
  # Change this to decide where you want to redirect user to after callback is finished.
  # params[:id] holds the service name so you could use this to redirect to various parts
  # of your application depending on what service you're connecting to.
  def go_back
    redirect_to root_url
  end
  
end
