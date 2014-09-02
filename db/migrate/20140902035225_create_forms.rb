class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :First_Name
      t.string :LAST_Name
      t.string :Class
      t.string :Gender

      t.timestamps
    end
  end
end
