class Dog < ApplicationRecord
  has_many :nicknames
  has_and_belongs_to_many :roles  
end
