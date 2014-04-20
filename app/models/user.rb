class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :contact
  has_many :events, foreign_key: "creator_id"
  has_many :events, foreign_key: "attendee_id"

  has_many :products, foreign_key: "owner_id", through: :events, source: :product

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>"}, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
