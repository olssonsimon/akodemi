class AddLastDayToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :last_day, :date
  end
end
