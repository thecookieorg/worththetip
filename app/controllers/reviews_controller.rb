class ReviewsController < ApplicationController
	before_action :set_dish

	def create  
	  @review = @dish.reviews.build(review_params)
	  @review.user_id = current_user.id

	  if @review.save
	    flash[:success] = "You reviewed the hell out of that dish!"
	    redirect_to :back
	  else
	    flash[:alert] = "Check the review form, something went horribly wrong."
	    render root_path
	  end
	end

	def destroy  
	  @review = @dish.reviews.find(params[:id])

	  @review.destroy
	  flash[:success] = "Review deleted :("
	  redirect_to root_path
	end 

private

	def review_params  
	  params.require(:review).permit(:content)
	end

	def set_dish  
	  @dish = Dish.find(params[:dish_id])
	end  
end
