class Order < ActiveRecord::Base
	# user_name = Customer placing order
	# email = user email
	# data = Completed letter template
	# data_id = Template Style
	# stripe_data = data received from stripe

	# validates_presence_of :user_name, :email, :data, :data_type, :stripe_data
	validate :order_is_valid?

private
  def order_is_valid?
  	return true
  end
end
