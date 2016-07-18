class Cohort < ActiveRecord::Base
  has_and_belongs_to_many :students, through: :cohorts_students
  accepts_nested_attributes_for :students
  has_many :users, through: :students
  
  validates :cohort,
    uniqueness: {case_sensitive: false}
end
