class CreateInterviewTable < ActiveRecord::Migration[5.2]
  def change
    create_table :interviews do |t|
      t.date :date
      t.integer :interview_score
      t.integer :interviewer_id
      t.integer :applicant_id
    end
  end
end
