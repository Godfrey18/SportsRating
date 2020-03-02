class SportsController < ApplicationController

 def index
 @sports = Sport.all
 end

 def new
@sports = Sport.new
 end 

 def create
@sports = Sport.new(add_params)
 if @sports.save
 	flash[:notice] = "Sports Created Sucessfully"
 	redirect_to @sports
 end 
end

def show
@sport = Sport.find(params[:id])
end

def edit
@sports = Sport.find(params[:id])
end

def update
	@sports = Sport.find(params[:id])
if @sports.update(add_params)
	flash[:notice] = "Updated Sucessfully"
	redirect_to @sports
else
	render 'edit'
end

end

def destroy
@sport = Sport.find(params[:id])
@sport.destroy
redirect_to sports_path

end

 private

  def add_params
 
  params.require(:sport).permit(:name,:no_players,:discription)

  end

 
end
