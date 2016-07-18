class Student < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  has_many :deliverables, through: :cohort
  has_and_belongs_to_many :cohorts, through: :cohorts_students, inverse_of: :student

  accepts_nested_attributes_for :reviews
  accepts_nested_attributes_for :cohorts
  accepts_nested_attributes_for :user

  validates :brand,
    allow_nil: true,
    allow_blank: true,
    length: {in: 10..600}

  validates :linkedin,
    allow_nil: true,
    allow_blank: true,
    :url => true

  validates :resume,
    allow_nil: true,
    allow_blank: true,
    :url => true

  validates :jobtracker,
    allow_nil: true,
    allow_blank: true,
    :url => true

  validates :portfolio,
    allow_nil: true,
    allow_blank: true,
    :url => true

end
