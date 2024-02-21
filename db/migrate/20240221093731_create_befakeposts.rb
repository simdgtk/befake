class CreateBefakeposts < ActiveRecord::Migration[7.1]
  def change
    create_table :befakeposts do |t|
      t.string :username
      t.text :profile_picture
      t.text :front_picture
      t.text :back_picture
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
