class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
      t.string :comment

      t.timestamps null: false
    end
  end
end
