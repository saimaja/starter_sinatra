class Interviewer < ActiveRecord::Base
    has_many :applicants, through: :interviews

end