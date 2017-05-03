class HomepageController < ApplicationController
    
    def index
         
      @stuffs = Stuff.all
 
    end    
end
