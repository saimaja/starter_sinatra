class FixInterviewersTableName < ActiveRecord::Migration[5.2]
    def change
      rename_table :interviewer, :interviewers 
  end
end
