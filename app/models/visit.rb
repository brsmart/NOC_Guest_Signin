class Visit < ActiveRecord::Base
  validates :company, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :notes, presence: true
end
