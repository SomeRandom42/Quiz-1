class StuffsController < ApplicationController
    
    def new
      
      @stuff = Stuff.new
      
    end    
   
    def create
        @stuff = Stuff.new(stuff_params)
        
        if @stuff.save 
          redirect_to root_path
        else
          redirect_to root_path, alert: 'Unable to save Stuff'
        end 
    end    
    
    
    private
    
    def stuff_params
       params.require(:stuff).permit(:thing) 
        
    end    

end
