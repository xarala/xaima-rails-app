class ProfilesController < ApplicationController


  def show
    @profile = Profile.find(params[:id])
  end

  
  def new
    @profile = Profile.new
  end
  
  def create
    @profile = Profile.new(params[:profile])
    
    respond_to do |format|
     
      if @profile.save
        format.html { redirect_to(@profile, :notice => 'profile was successfully created.') }
        format.xml  { render :xml => @profile, :status => :created, :location => @profile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @profile.errors, :status => :unprocessable_entity }
      end
      
    end
    
    
  end

end
