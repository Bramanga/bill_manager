class Bill < ActiveRecord::Base
  validates_presence_of :name, :posted_by
  validates_numericality_of :amount
end

