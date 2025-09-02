class CreateExperiences < ActiveRecord::Migration[7.2]
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :company
      t.text :description
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
