class Child < ActiveRecord::Base
  belongs_to :mother
  attr_accessible :age, :name, :surname, :mother_id
  validates :age, :numericality => { :only_integer => true }
end
