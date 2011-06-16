class Bill < ActiveRecord::Base

  belongs_to :home

  validates_presence_of :name, :posted_by
  validates_numericality_of :amount
end

