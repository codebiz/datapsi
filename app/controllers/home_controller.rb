class HomeController < ApplicationController
  def index
    @users = User.all
  end
  
  def search_domain
    
  end
  
  def privacypolicy
    
  end
end
