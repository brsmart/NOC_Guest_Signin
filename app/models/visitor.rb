class Visitor < ActiveRecord::Base
  belongs_to :visit

  validates :vname, presence: true
end
