class Applicant < ActiveRecord::Base
    has_many :interviewers, through: :interviews

end