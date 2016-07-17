class Cohort < ActiveRecord::Base
  has_and_belongs_to_many :students
  has_many :users, through: :student

  validates :cohort,
    uniqueness: {case_sensitive: false}
    
end
