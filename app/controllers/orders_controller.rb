# This is where we do the business logic for orders
# It feeds into views and also handles view form submission
class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    order = Order.create(order_params)
    render action: "thankyou"
#   This is where we write to the database and then redirect to the thank you page
  end

  def show
  end

  def thankyou
    render :thankyou
    # in future maybe get user name and show it
  end

private
  def order_params
    params.require("order").permit("user_name", "email", "data", "data_type", "stripe_data")
  end
end
