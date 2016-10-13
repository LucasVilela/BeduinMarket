class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private
  # def current_wish_list
  #   WishList.find(session[:wish_list_id])
  #
  # rescue ActiveRecord::RecordNotFound
  #     wish_list = WishList.create
  #     session[:wish_list_id] = wish_list.id
  #     wish_list
  # end
end
