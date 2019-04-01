class AddTeamToProjects < ActiveRecord::Migration[5.2]
  def change
    add_reference :projects, :team, foreign_key: true
  end
end
