class ChangeColumnContentIntoIssues < ActiveRecord::Migration
  def change
    change_column :issues, :content, :text
  end
end
