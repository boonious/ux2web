require 'feed-normalizer'
require 'open-uri'

class HomeController < ApplicationController
  
  def index
    @boon_feed = FeedNormalizer::FeedNormalizer.parse open('public/feeds/boon.xml')
    @lorraine_feed = FeedNormalizer::FeedNormalizer.parse open('public/feeds/lorraine.xml')
        
  end

end