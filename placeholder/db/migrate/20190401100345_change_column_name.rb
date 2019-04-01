class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :teams_users, :project_id, :team_id
  end
end
