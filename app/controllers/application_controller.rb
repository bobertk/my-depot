class ApplicationController < ActionController::Base
  before_filter :authorize  # whitelist this in public controllers
  protect_from_forgery

  private  # cart avail only to controllers/ not avail as action on controller

    def current_cart 
      Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      session[:cart_id] = cart.id
      cart
    end

  protected  # don't expose as an action

    def authorize
      unless User.find_by_id(session[:user_id])
        redirect_to login_url, notice: "Please log in"
      end
    end  
end
