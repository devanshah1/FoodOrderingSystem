class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_order
  #before_filter :authenticate_user!, except: [:index, :show]

  def current_order
    if Order.exists?(user_id:  current_user.id)
      Order.find_by_user_id(current_user.id)
    else
      Order.create(:user_id => current_user.id)
    end
  end
end
