class CreateInterviewerTable < ActiveRecord::Migration[5.2]
  def change
    create_table :interviewer do |t|
      t.string :name
      t.string :title
    end
  end
end
