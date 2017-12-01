class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def ensure_ownership
    @review = Review.find(params[:id])
    if @review.id != current_user.id
      flash[:alert] = ["You are not the owner of this review!"]
      redirect_to root_path
    end
  end
end
