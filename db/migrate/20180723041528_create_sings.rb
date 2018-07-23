class CreateSings < ActiveRecord::Migration[5.2]
  def change
    create_table :sings do |t|
      t.string :username
      t.text :password

      t.timestamps
    end
  end
end
