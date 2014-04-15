class Review < ActiveRecord::Base

private
  def review_is_valid?
    return true
  end
end
