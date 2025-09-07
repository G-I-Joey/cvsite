class CreateEducations < ActiveRecord::Migration[7.2]
  def change
    create_table :educations do |t|
      t.string :school
      t.string :degree
      t.string :field
      t.text :description
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
