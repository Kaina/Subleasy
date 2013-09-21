class WatchedLease < ActiveRecord::Base
  belongs_to :user 
  belongs_to :listing
  validates :user_id, :listing_id, presence: true
end
