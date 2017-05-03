class HomepageController < ApplicationController
    
    def index
         
     @stuffs = Stuff.all
      
     @stuff = Stuff.new
      
    end    
   
    def create
        Stuff.create(stuff_params)
        redirect_to root_path
    end    
    
    
    private
    
    def stuff_params
       params.require(:stuff).permit(:thing) 
        
    end    

end
