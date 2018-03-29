class WelcomeController < ApplicationController
  def home
    if (logged_in?)
      redirect_to profile_path
    end
  end
  
  def about
  end
  
  def contact
  end
  
  def nearbyStores
  end
end