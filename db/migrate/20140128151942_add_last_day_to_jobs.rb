class AddLastDayToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :last_day, :datetime
  end
end