class CreateApplicantTable < ActiveRecord::Migration[5.2]
    def change
    create_table :applicants do |t|
    t.string :name
    t.string :resume
    end
  end
end
