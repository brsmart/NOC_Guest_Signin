class Visit < ActiveRecord::Base
  has_many :visitors
  has_many :visit_logs
  accepts_nested_attributes_for :visitors, :allow_destroy => true

  validates :company, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :notes, presence: true

end
