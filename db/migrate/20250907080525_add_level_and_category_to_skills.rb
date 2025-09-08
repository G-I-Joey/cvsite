class AddLevelAndCategoryToSkills < ActiveRecord::Migration[7.2]
  def change
    add_column :skills, :level, :string
    add_column :skills, :category, :string
  end
end
