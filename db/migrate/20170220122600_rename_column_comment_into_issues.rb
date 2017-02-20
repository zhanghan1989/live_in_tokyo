class RenameColumnCommentIntoIssues < ActiveRecord::Migration
  def change
    rename_column :issues, :comment, :content
  end
end
