class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :cohort

      t.timestamps null: false
    end
  end
end
