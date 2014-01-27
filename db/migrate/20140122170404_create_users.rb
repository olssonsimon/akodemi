class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.has_attached_file :avatar
      t.has_attached_file :cv

      t.timestamps
    end
  end
end
