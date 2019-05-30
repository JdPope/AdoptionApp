class Owner < ApplicationRecord
  has_many :dogs

  validates_uniqueness_of :name, :case_sensitive => false
end
