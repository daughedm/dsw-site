class Vote < ActiveRecord::Base

  belongs_to :user
  belongs_to :submission, touch: true

end
