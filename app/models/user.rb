class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates_presence_of :email, :first_name, :last_name, :birthday

  has_one :lease, :foreign_key => "user_id", class_name: "Listing"

  has_many :watched_leases
  has_many :followed_leases,
           :through => :watched_leases,
           :source  => "Listing"

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
