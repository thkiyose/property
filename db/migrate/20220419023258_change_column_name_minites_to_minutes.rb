class ChangeColumnNameMinitesToMinutes < ActiveRecord::Migration[6.1]
  def change
    rename_column :stations, :minites, :minutes
  end
end
