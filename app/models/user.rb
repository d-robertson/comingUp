class User < ActiveRecord::Base
  has_one :student
  has_one :githubstudent
  has_many :cohorts, through: :student
  has_many :reviews, through: :student
  has_many :deliverables, through: :cohorts
  
  accepts_nested_attributes_for :student

  has_secure_password
  
  validates :name,
    presence: true,
    length: {in: 1..30}

  validates :email,
    presence: true,
    email: true,
    uniqueness: {case_sensitive: false}

  validates :password,
    length: {in: 8..72},
    on: :create


  def self.authenticate(params)
    User.find_by_email(params[:email]).try(:authenticate, params[:password])
  end

end
